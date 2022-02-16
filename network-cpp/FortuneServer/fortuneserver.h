#ifndef FORTUNESERVER_FORTUNESERVER_H
#define FORTUNESERVER_FORTUNESERVER_H

#include <QTcpServer>

class FortuneServer : public QTcpServer {
    Q_OBJECT

public:
    explicit FortuneServer(QObject *parent = nullptr);

protected:
    void incomingConnection(qintptr socket_descriptor) override;

private:
    QStringList fortunes;
};


#endif //FORTUNESERVER_FORTUNESERVER_H
