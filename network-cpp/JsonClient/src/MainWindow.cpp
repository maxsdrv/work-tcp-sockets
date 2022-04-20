#include "MainWindow.h"
#include <QPushButton>
#include <QDebug>
#include <iostream>


MainWindow::MainWindow(int _port, QUrl _url, QWidget *parent) : QDialog(parent),
                                          connect_button(new QPushButton("Connect")),
                                          m_port(_port)
{

    _socket = new QTcpSocket(this);
    connect(_socket, &QTcpSocket::readyRead, this, &MainWindow::sock_ready);
    connect(_socket, &QTcpSocket::disconnected, this, &MainWindow::deleteLater);

    connect_button->setDefault(true);

    table_view = new QTableView(this);


    auto quit_button = new QPushButton(tr("Quit"));
    get_button = new QPushButton(tr("DownloadFile"));

    auto button_box = new QDialogButtonBox;
    button_box->addButton(connect_button, QDialogButtonBox::ActionRole);
    button_box->addButton(quit_button, QDialogButtonBox::RejectRole);
    button_box->addButton(get_button, QDialogButtonBox::ActionRole);

    connect(_socket, &QTcpSocket::readyRead, this, &MainWindow::sock_ready);
    connect(connect_button, &QAbstractButton::clicked, this, &MainWindow::push_button_connect);
    //connect(get_button, &QAbstractButton::clicked, this, &MainWindow::push_button_get);
    connect(quit_button, &QAbstractButton::clicked, this, &MainWindow::close);

    auto *mainLayout = new QGridLayout(this);
    mainLayout->addWidget(button_box, 3, 0, 1, 2);
    mainLayout->addWidget(table_view, 2, 0, 1, 1);

    setWindowTitle(QGuiApplication::applicationDisplayName());
}

MainWindow::~MainWindow()
{
    qDebug() << "~MainWindow()";
}

void MainWindow::sock_ready() {
    if (_socket->waitForConnected(500))
    { //eсли соеденение устойчивое
        _socket->waitForReadyRead(500); // ждём для чтения
        _data = _socket->readAll(); // записываем всё содержимое сокета
    }
    
}

void MainWindow::push_button_connect() {
    connect_button->setEnabled(false);

    _socket->connectToHost("10.44.4.15", m_port); //соеденение с хостом
    
    if (_socket->waitForConnected(3000))
    {
        qDebug() << "waiting OK ...";
    }
    else std::cerr << "WAITING::ERROR" << '\n';

    if (_socket->socketDescriptor() < 1 )
    {
        QMessageBox msgBox;
        msgBox.critical(this, "Connect to Host", "CONNECTION::ERROR");
    }
    else QMessageBox::information(this, "Info", "CONNECTION::SUCCESSFULLY");

    connect_button->setEnabled(true);
}

void MainWindow::push_button_get() {
    get_button->setEnabled(false);

    if (_socket->isOpen()) {
        _socket->write(R"({"type":"select","params":"workers"})");
        _socket->waitForBytesWritten(500);
    }
    else {
        QMessageBox::information(this, "Info", "Connect is not stable");
    }

    get_button->setEnabled(true);
}

void MainWindow::file_download(QNetworkReply* prt_reply)
{
    
}

QByteArray MainWindow::download_data() const
{
    return _data;
}


















