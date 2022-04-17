#ifndef SERVER_DIALOG_H
#define SERVER_DIALOG_H

#include <QWidget>
#include <QtWidgets>
#include "MyServer.h"

class Dialog : public QWidget {
    Q_OBJECT

public:
    explicit Dialog(QWidget *parent = nullptr);

private:
    QLabel *status_label;
    QPushButton *quit_button;
    MyServer server;
};


#endif //SERVER_DIALOG_H
