#include <QtWidgets>
#include <QtNetwork>

#include <stdlib.h>

#include "dialog.h"
#include "fortuneserver.h"

Dialog::Dialog(QWidget *parent) : QWidget(parent)
{
    status_label = new QLabel;
    status_label->setWordWrap(true);
    quit_button = new QPushButton(tr("Quit"));
    quit_button->setAutoDefault(false);

    if (!server.listen()) {
        QMessageBox::critical(this, tr("Threaded Fortune Server"),
                              tr("Unable to start the server: %1")
                              .arg(server.errorString()));
        close();
        return;
    }

    QString ip_address;
    QList<QHostAddress> ip_addressesList = QNetworkInterface::allAddresses();

    for (const auto & i : ip_addressesList) {
        if (i != QHostAddress::LocalHost &&
            i.toIPv4Address()) {
            ip_address = i.toString();
            break;
        }
    }

    if (ip_address.isEmpty()) {
        ip_address = QHostAddress(QHostAddress::LocalHost).toString();
    }
    status_label->setText(tr("The server is running on\n\nIp: %1\nport: %2\n\n"
                                 "Run the Fortune Client example now.")
                                 .arg(ip_address).arg(server.serverPort()));

    connect(quit_button, SIGNAL(clicked()), this, SLOT(close()));

    auto *button_layout = new QHBoxLayout;
    button_layout->addStretch(1);
    button_layout->addWidget(quit_button);
    button_layout->addStretch(1);

    auto *main_layout = new QVBoxLayout;
    main_layout->addWidget(status_label);
    main_layout->addLayout(button_layout);
    setLayout(main_layout);
    setWindowTitle(tr("Threaded Fortune Server"));
}










