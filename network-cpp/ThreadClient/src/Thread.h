#pragma once 

#include <QThread>
#include <QMutex>
#include <QWaitCondition>

class Thread : public QThread
{
    Q_OBJECT
        
public:
    explicit Thread(QObject *parent = nullptr);
    ~Thread();

    void requestNewFortune(const QString& hostName, quint16 port);
    void run() override;

signals:
    void newFortune(const QString& fortune);
    void error(int socketError, const QString& message);
    void status(const QString& message);

private:
    QString hostName;
    quint16 port;
    QMutex mutex;
    QWaitCondition cond;
    bool quit;
};
