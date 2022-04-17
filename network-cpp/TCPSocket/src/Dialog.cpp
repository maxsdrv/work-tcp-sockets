#include "Dialog.h"

#include <QtNetwork/QtNetwork>


Dialog::Dialog(QWidget *parent) : QWidget(parent)
{
    status_label = new QLabel;
    status_label->setWordWrap(true);
    quit_button = new QPushButton(tr("Quit"));
    quit_button->setAutoDefault(false);

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
    status_label->setText(tr("The server is running on\n\nIP: %1\nport: %2\n\n")
                                  .arg(ipAddress).arg(server.serverPort()));

    connect(quit_button, &QAbstractButton::clicked, this, &Dialog::close);

    auto *button_layout = new QHBoxLayout;
    button_layout->addStretch(1);
    button_layout->addWidget(quit_button);
    button_layout->addStretch(1);

    auto *main_layout = new QVBoxLayout;
    main_layout->addWidget(status_label);
    main_layout->addLayout(button_layout);
    setLayout(main_layout);
    setWindowTitle(tr("Server"));
}





