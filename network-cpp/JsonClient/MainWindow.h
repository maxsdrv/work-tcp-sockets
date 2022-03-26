#ifndef SERVER_MAINWINDOW_H
#define SERVER_MAINWINDOW_H

#include <QMessageBox>
#include <QTcpSocket>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonParseError>
#include <QtWidgets>



class MainWindow : public QDialog {
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    QTcpSocket *_socket;
    QPushButton *connectButton;
    QPushButton *getButton;
    QByteArray _data;

    QJsonDocument doc;
    QJsonParseError docError;

    QTableView *tableView;

public slots:
    void sockReady();
    void pushButtonConnect();
    void pushButtonGet();
};


#endif //SERVER_MAINWINDOW_H
