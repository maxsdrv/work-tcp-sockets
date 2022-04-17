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
     MainWindow(int _port, QWidget *parent = nullptr);
    ~MainWindow();

private:
    QTcpSocket *_socket;
    QPushButton *connect_button;
    QPushButton *get_button;
    QByteArray _data;
    QJsonDocument doc;
    QJsonParseError doc_error;
    QTableView *table_view;
    int m_port;

public slots:
    void sock_ready();
    void push_button_connect();
    void push_button_get();
};


#endif //SERVER_MAINWINDOW_H




































