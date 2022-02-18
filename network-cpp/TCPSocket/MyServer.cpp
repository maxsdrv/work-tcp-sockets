#include "MyServer.h"

#include <QFile>
#include <QDir>

MyServer::MyServer() : docError({})
{

}

MyServer::~MyServer() {
    qDebug() << "~MyServer()";
}


void MyServer::incomingConnection(int socketDescriptor) {
    _socket = new QTcpSocket(this); // create new socket
    _socket->setSocketDescriptor(socketDescriptor); // send socket descriptor

    connect(_socket, &QTcpSocket::readyRead, this, &MyServer::sockReady);
    connect(_socket, &QTcpSocket::disconnected, this, &MyServer::deleteLater);

    qDebug() << socketDescriptor << "Client connected";

    _socket->write(R"({"type":"connect","status":"yes"})");
    qDebug() << "Send client status - YES";
}

void MyServer::sockReady() {
    _data = _socket->readAll();
    qDebug() << "Data: " << _data;

    doc = QJsonDocument::fromJson(_data, &docError);

    if (docError.errorString() == "no error occurred") {
        if ((doc.object().value("type").toString() == "select") &&
            (doc.object().value("params").toString() == "workers")) {

            QFile file;
            QDir::setCurrent("E:/WorkEnvironment/Cpp/Other/my_code/homework_network/work-tcp-sockets/network-cpp");
            file.setFileName("workers.json");
            if (file.open(QIODevice::ReadOnly | QFile::Text)) {
                QByteArray fromFile = file.readAll();
                //{"type":"resultSelect", "result":...}
                QByteArray result = R"({"type":"resultSelect","result":)"+fromFile+"}";

                qDebug()<< "Result: " << result;

                _socket->write(result);
                _socket->waitForBytesWritten(500);
                _socket->disconnectFromHost();
            }
            else qDebug() << "ERROR::OPEN::FILE";

            file.close();
        }
    }
}

