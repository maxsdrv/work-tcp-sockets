#ifndef FORTUNESERVER_FORTUNETHREAD_H
#define FORTUNESERVER_FORTUNETHREAD_H

#include <QThread>
#include <QTcpSocket>


class FortuneThread : public QThread {
    Q_OBJECT

public:
    FortuneThread(int socket_descriptor, const QString& fortune, QObject *parent);

    void run() override;

signals:
    void error(QTcpSocket::SocketError socket_error);

private:
    int m_socket_descriptor;
    QString text;
};


#endif //FORTUNESERVER_FORTUNETHREAD_H
