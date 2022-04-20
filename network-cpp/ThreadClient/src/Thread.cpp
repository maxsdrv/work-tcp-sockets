#include <QtNetwork>

#include "ThreadClient.h" 

Thread::Thread(QObject *parent) : QThread(parent), quit(false)
{

}

Thread::~Thread()
{
    mutex.lock();
    quit = true;
    cond.wakeOne();
    mutex.unlock();
    wait();
}

void Thread::requestNewFortune(const QString& hostName, quint16 port)
{
    QMutexLocker locker(&mutex);
    this->hostName = hostName;
    this->port = port;
    if (!isRunning())
    {
        start();
    }
    else 
    {
        cond.wakeOne();
    }
}

void Thread::run()
{
    mutex.lock();
    QString serverName = hostName;
    quint16 serverPort = port;
    mutex.unlock();

    while (!quit)
    {
        const int Timeout = 5 * 1000;

        QTcpSocket socket;
        socket.connectToHost(serverName, serverPort);

        if (!socket.waitForConnected(Timeout))
        {
            emit error(socket.error(), socket.errorString());
            return;
        }
        else
//        auto msg = "CONNECT::SUCCESSFULLY";
            emit status(socket.localAddress().toString());

        /*QDataStream in(&socket);
        in.setVersion(QDataStream::Qt_4_0);
        QString fortune;

        do 
        {
            if (!socket.waitForReadyRead(Timeout))
            {
                emit error(socket.error(), socket.errorString());
                return;
            }
            
            in.startTransaction();
            in >> fortune;
        }while (!in.commitTransaction());
*/
        mutex.lock();
//        emit newFortune(fortune);
//        emit status(msg);

        cond.wait(&mutex);
        serverName = hostName;
        serverPort = port;
        mutex.unlock();
    }
}


















