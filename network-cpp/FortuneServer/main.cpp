#include <iostream>

#include <QApplication>
#include <QtCore/QtCore>


#include "dialog.h"

int main(int argc, char *argv[]) {

   QApplication app(argc, argv);
   Dialog dialog;
   dialog.show();

    return QApplication::exec();
}
