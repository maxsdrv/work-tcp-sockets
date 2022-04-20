/****************************************************************************
** Meta object code from reading C++ file 'ThreadClient.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ThreadClient.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ThreadClient.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ThreadClient_t {
    QByteArrayData data[10];
    char stringdata0[119];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ThreadClient_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ThreadClient_t qt_meta_stringdata_ThreadClient = {
    {
QT_MOC_LITERAL(0, 0, 12), // "ThreadClient"
QT_MOC_LITERAL(1, 13, 17), // "requestNewFortune"
QT_MOC_LITERAL(2, 31, 0), // ""
QT_MOC_LITERAL(3, 32, 11), // "showFortune"
QT_MOC_LITERAL(4, 44, 7), // "fortune"
QT_MOC_LITERAL(5, 52, 12), // "displayError"
QT_MOC_LITERAL(6, 65, 11), // "socketError"
QT_MOC_LITERAL(7, 77, 7), // "message"
QT_MOC_LITERAL(8, 85, 10), // "showStatus"
QT_MOC_LITERAL(9, 96, 22) // "enableGetFortuneButton"

    },
    "ThreadClient\0requestNewFortune\0\0"
    "showFortune\0fortune\0displayError\0"
    "socketError\0message\0showStatus\0"
    "enableGetFortuneButton"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ThreadClient[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x08 /* Private */,
       3,    1,   40,    2, 0x08 /* Private */,
       5,    2,   43,    2, 0x08 /* Private */,
       8,    1,   48,    2, 0x08 /* Private */,
       9,    0,   51,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,    6,    7,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void,

       0        // eod
};

void ThreadClient::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ThreadClient *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->requestNewFortune(); break;
        case 1: _t->showFortune((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->displayError((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 3: _t->showStatus((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->enableGetFortuneButton(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject ThreadClient::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_ThreadClient.data,
    qt_meta_data_ThreadClient,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ThreadClient::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ThreadClient::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ThreadClient.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int ThreadClient::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
