#include <QApplication>

#include "ThreadClient.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    ThreadClient client;
    client.show();

    return QApplication::exec();
}
