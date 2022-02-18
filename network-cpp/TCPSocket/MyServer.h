#ifndef SERVER_MYSERVER_H
#define SERVER_MYSERVER_H

#include <QTcpSocket>
#include <QTcpServer>
#include <QJsonObject>
#include <QJsonParseError>
#include <QJsonDocument>

class MyServer : public QTcpServer {
    Q_OBJECT

public:
    MyServer();
    ~MyServer();

private:
    QTcpSocket *_socket = nullptr;
    QByteArray _data; // для хранения данных для передачи по сокету в сеть

    QJsonDocument doc;
    QJsonParseError docError;

public slots:
    void incomingConnection(int socketDescriptor) override; // описание действий в случае присоеденения нового клиента
    void sockReady(); // метод описания готовности сокета читать полученные данные
};


#endif //SERVER_MYSERVER_H
