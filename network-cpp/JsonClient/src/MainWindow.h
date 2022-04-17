#ifndef SERVER_MAINWINDOW_H
#define SERVER_MAINWINDOW_H

#include <QMessageBox>
#include <QTcpSocket>
#include <QtWidgets>
#include <QByteArray>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>


class MainWindow : public QDialog {
    Q_OBJECT

public:
     explicit MainWindow(int _port, QUrl _url, QWidget *parent = nullptr);
    ~MainWindow();
    QByteArray download_data() const;

private:
    QTcpSocket *_socket;
    QPushButton *connect_button;
    QPushButton *get_button;
    QByteArray _data;
    QTableView *table_view;
    int m_port;
    QNetworkAccessManager m_web_ctrl;
    
signals:
    void download();

private slots:
    void file_download(QNetworkReply* ptr_reply);

public slots:
    void sock_ready();
    void push_button_connect();
    void push_button_get();
};


#endif //SERVER_MAINWINDOW_H




































