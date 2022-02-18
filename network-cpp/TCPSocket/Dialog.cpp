#include "Dialog.h"

#include <QtNetwork/QtNetwork>


Dialog::Dialog(QWidget *parent) : QWidget(parent)
{
    statusLabel = new QLabel;
    statusLabel->setWordWrap(true);
    quitButton = new QPushButton(tr("Quit"));
    quitButton->setAutoDefault(false);

    //Start server
    if (!server.listen()) {
        QMessageBox::critical(this, tr("Server"),
                                tr("Unable to start the server: %1.")
                                    .arg(server.errorString()));
        close();
        return;
    }

    //use IPv4 localhost
    QString ipAddress {};

    if (ipAddress.isEmpty()) {
        ipAddress = QHostAddress(QHostAddress::LocalHost).toString();
    }
    statusLabel->setText(tr("The server is running on\n\nIP: %1\nport: %2\n\n")
                                  .arg(ipAddress).arg(server.serverPort()));

    connect(quitButton, &QAbstractButton::clicked, this, &Dialog::close);

    auto *buttonLayout = new QHBoxLayout;
    buttonLayout->addStretch(1);
    buttonLayout->addWidget(quitButton);
    buttonLayout->addStretch(1);

    auto *mainLayout = new QVBoxLayout;
    mainLayout->addWidget(statusLabel);
    mainLayout->addLayout(buttonLayout);
    setLayout(mainLayout);
    setWindowTitle(tr("Server"));
}





