#pragma once 

#include <QWidget>
#include <qglobal.h>
#include <qwidget.h>

#include "Thread.h"

QT_BEGIN_NAMESPACE
class QDialogButtonBox;
class QLabel;
class QLineEdit;
class QPushButton;
class QAction;
QT_END_NAMESPACE

class ThreadClient : public QWidget
{
    Q_OBJECT

public:
    explicit ThreadClient(QWidget *parent = nullptr);

private slots:
    void requestNewFortune();
    void showFortune(const QString& fortune);
    void displayError(int socketError, const QString& message);
    void showStatus(const QString& message);
    void enableGetFortuneButton();

private:
    QLabel *hostLabel;
    QLabel *portLabel;
    QLineEdit *hostLineEdit;
    QLineEdit *portLineEdit;
    QLabel *statusLabel;
    QPushButton *getFortuneButton;
    QPushButton *quitButton;
    QDialogButtonBox *buttonBox;

    Thread thread;
    QString currentFortune;
};
