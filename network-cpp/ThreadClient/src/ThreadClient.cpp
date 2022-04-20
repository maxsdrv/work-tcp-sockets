#include <QtWidgets>
#include <QtNetwork>

#include "ThreadClient.h"


ThreadClient::ThreadClient(QWidget *parent) : QWidget(parent)
{
    hostLabel = new QLabel(tr("&Server name:"));
    portLabel = new QLabel(tr("S&erver port:"));

    QString ipAddress;
    QList<QHostAddress> ipAddressList = QNetworkInterface::allAddresses();
    for (int i = 0; i < ipAddressList.size(); ++i)
    {
        if (ipAddressList.at(i) != QHostAddress::LocalHost &&
            ipAddressList.at(i).toIPv4Address())
        {
            ipAddress = ipAddressList.at(i).toString();
            break;
        }
    }

    if (ipAddress.isEmpty())
    {
        ipAddress = QHostAddress(QHostAddress::LocalHost).toString();
    }

    hostLineEdit = new QLineEdit(ipAddress);
    portLineEdit = new QLineEdit;
    portLineEdit->setValidator(new QIntValidator(1, 65535, this));


    hostLabel->setBuddy(hostLineEdit);
    portLabel->setBuddy(portLineEdit);

    statusLabel = new QLabel(tr("RUN::SERVER"));
    statusLabel->setWordWrap(true);
    
    getFortuneButton = new QPushButton(tr("Check Status"));
    getFortuneButton->setDefault(true);
    getFortuneButton->setEnabled(false);

    quitButton = new QPushButton(tr("Quit"));

    buttonBox = new QDialogButtonBox;
    buttonBox->addButton(getFortuneButton, QDialogButtonBox::ActionRole);
    buttonBox->addButton(quitButton, QDialogButtonBox::RejectRole);

    connect(getFortuneButton, &QPushButton::clicked,
            this, &ThreadClient::requestNewFortune);
    connect(quitButton, &QPushButton::clicked,
            this, &ThreadClient::close);

    connect(hostLineEdit, &QLineEdit::textChanged,
            this, &ThreadClient::enableGetFortuneButton);
    connect(portLineEdit, &QLineEdit::textChanged,
            this, &ThreadClient::enableGetFortuneButton); 

    connect(&thread, &Thread::newFortune,
            this, &ThreadClient::showFortune);
    connect(&thread, &Thread::error,
            this, &ThreadClient::displayError);
    connect(&thread, &Thread::status,
            this, &ThreadClient::showStatus);

    auto *mainLayout = new QGridLayout; 
    mainLayout->addWidget(hostLabel, 0, 0);
    mainLayout->addWidget(hostLineEdit, 0, 1);
    mainLayout->addWidget(portLabel, 1, 0);
    mainLayout->addWidget(portLineEdit, 1, 1);
    mainLayout->addWidget(statusLabel, 2, 0, 1, 2);
    mainLayout->addWidget(buttonBox, 3, 0, 1, 2);
    setLayout(mainLayout);

    setWindowTitle(tr("MezoninTestClient"));
    portLineEdit->setFocus();
}

void ThreadClient::requestNewFortune()
{
    getFortuneButton->setEnabled(false);
    thread.requestNewFortune(hostLineEdit->text(),
            portLineEdit->text().toInt());
}

void ThreadClient::showFortune(const QString& nextFortune)
{
    if (nextFortune == currentFortune)
    {
        requestNewFortune();
        return;
    }

    currentFortune = nextFortune;
    statusLabel->setText(currentFortune);
    getFortuneButton->setEnabled(true);
}

void ThreadClient::displayError(int socketError, const QString& message)
{
    switch (socketError)
    {
        case QAbstractSocket::HostNotFoundError:
            QMessageBox::information(this, tr("ThreadClient"), 
                                    tr("HOST::NOT::FOUND"));
            break;
        case QAbstractSocket::ConnectionRefusedError:
            QMessageBox::information(this, tr("ThreadClient"),
                                    tr("CONNECTION::REFUSED"
                                        "::CHECK::SERVER::CONNECTION"));
            break;

        default:
            QMessageBox::information(this, tr("ThreadClient"),
                                    tr("The following error occurred: %1.")
                                    .arg(message));
    }
    
    getFortuneButton->setEnabled(true);
}

void ThreadClient::enableGetFortuneButton()
{
    bool enable(!hostLineEdit->text().isEmpty() && !portLineEdit->text().isEmpty());
    getFortuneButton->setEnabled(enable);
}

void ThreadClient::showStatus(const QString& message)
{
    QMessageBox::information(this, tr("ThreadClient"),
                            tr("STATUS::").arg(message)); 

    getFortuneButton->setEnabled(true);
}





























