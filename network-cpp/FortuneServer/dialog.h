#ifndef FORTUNESERVER_DIALOG_H
#define FORTUNESERVER_DIALOG_H

#include <QWidget>
#include <QLabel>
#include <QPushButton>

#include "fortuneserver.h"

class Dialog : public QWidget
{
    Q_OBJECT

public:
    explicit Dialog(QWidget *parent = nullptr);

private:
    QLabel *status_label;
    QPushButton *quit_button;
    FortuneServer server;
};


#endif //FORTUNESERVER_DIALOG_H
