//
// Created by User on 15.02.2022.
//

#include "fortunethread.h"

#include <QtNetwork/QtNetwork>

FortuneThread::FortuneThread(int descriptor, const QString& fortune, QObject *parent)
    : QThread(parent), m_socket_descriptor(descriptor), text(fortune) {

}

void FortuneThread::run() {
    QTcpSocket tcp_socket;

    if (!tcp_socket.setSocketDescriptor(m_socket_descriptor)) {
        emit error(tcp_socket.error());
        return;
    }

    QByteArray block;
    QDataStream out(&block, QIODevice::WriteOnly);
    out.setVersion(QDataStream::Qt_4_0);
    out << text;

    tcp_socket.write(block);
    tcp_socket.disconnectFromHost();
    tcp_socket.waitForDisconnected();
}

