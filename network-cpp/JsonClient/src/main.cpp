#include <iostream>
#include <string>

#include "MainWindow.h"

//Fixing problem displaying on 4K monitor with error QT_DEVICE_PIXEL_RATIO
static void DisableRatio()
{
    qputenv("QT_DEVICE_PIXEL_RATIO", "0");
    qputenv("QT_AUTO_SCREEN_SCALE_FACTOR", "1");
    qputenv("QT_SCREEN_SCALE_FACTORS", "1");
    qputenv("QT_SCALE_FACTOR", "1");

}


int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        std::cerr << "missing port ..." << '\n';
        return EXIT_FAILURE;
    }
    else if (argc != 3)
    {
        std::cerr << "missing url ..." << '\n';
        return EXIT_FAILURE;
    }

    unsigned short port = std::stoi(argv[1]);
    QString url = argv[2];

    DisableRatio();
    QApplication app(argc, argv);
    
    
    MainWindow window(port, url);
    window.show(); 

    return app.exec();
}





























































