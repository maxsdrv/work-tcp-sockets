#include "MainWindow.h"
#include <QPushButton>
#include <QDebug>


MainWindow::MainWindow(QWidget *parent) : QDialog(parent),
                                          connectButton(new QPushButton("Connect")) {

    _socket = new QTcpSocket(this);
    connect(_socket, &QTcpSocket::readyRead, this, &MainWindow::sockReady);
    connect(_socket, &QTcpSocket::disconnected, this, &MainWindow::deleteLater);

    connectButton->setDefault(true);

    tableView = new QTableView(this);


    auto quitButton = new QPushButton(tr("Quit"));
    getButton = new QPushButton(tr("GetListWorkers"));

    auto buttonBox = new QDialogButtonBox;
    buttonBox->addButton(connectButton, QDialogButtonBox::ActionRole);
    buttonBox->addButton(quitButton, QDialogButtonBox::RejectRole);
    buttonBox->addButton(getButton, QDialogButtonBox::ActionRole);

    connect(_socket, &QTcpSocket::readyRead, this, &MainWindow::sockReady);
    connect(connectButton, &QAbstractButton::clicked, this, &MainWindow::pushButtonConnect);
    connect(getButton, &QAbstractButton::clicked, this, &MainWindow::pushButtonGet);
    connect(quitButton, &QAbstractButton::clicked, this, &MainWindow::close);

    auto *mainLayout = new QGridLayout(this);
    mainLayout->addWidget(buttonBox, 3, 0, 1, 2);
    mainLayout->addWidget(tableView, 2, 0, 1, 1);

    setWindowTitle(QGuiApplication::applicationDisplayName());
}

MainWindow::~MainWindow()
{
    qDebug() << "~MainWindow()";
}

void MainWindow::sockReady() {
    if (_socket->waitForConnected(500)) { //eсли соеденение устойчивое
        _socket->waitForReadyRead(500); // ждём для чтения
        _data = _socket->readAll(); // записываем всё содержимое сокета

        doc = QJsonDocument::fromJson(_data, &docError);

        if (docError.errorString().toInt() == QJsonParseError::NoError) {
            if ((doc.object().value("type").toString() == "connect") &&
                (doc.object().value("status").toString() == "yes")) {

                QMessageBox::information(this, "Info", "Connect successfully");
            }
            else if (doc.object().value("type").toString() == "resultSelect") {
                auto *model = new QStandardItemModel(nullptr);
                model->setHorizontalHeaderLabels(QStringList() << "name");

                QJsonArray docArr = doc.object().value("result").toArray();
                for (int i = 0; i < docArr.count(); ++i) {
                    auto *col = new QStandardItem(docArr[i].toObject().value("name").toString());
                    model->appendRow(col);
                }

                tableView->setModel(model);
            }
            else {
                QMessageBox::information(this, "Info", "Connect wrong");
            }
        }
        else {
            QMessageBox::information(this, "Info", "Format is not correct" + docError.errorString());
        }
    }

}


void MainWindow::pushButtonConnect() {
    connectButton->setEnabled(false);

    _socket->connectToHost("localhost", 5373); //соеденение с хостом
}

void MainWindow::pushButtonGet() {
    getButton->setEnabled(false);

    if (_socket->isOpen()) {
        _socket->write(R"({"type":"select","params":"workers"})");
        _socket->waitForBytesWritten(500);
    }
    else {
        QMessageBox::information(this, "Info", "Connect is not stable");
    }
    getButton->setEnabled(true);
}

