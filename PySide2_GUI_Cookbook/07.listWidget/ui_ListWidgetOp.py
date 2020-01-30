# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'ListWidgetOp.ui'
##
## Created by: Qt User Interface Compiler version 5.14.0
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import (QCoreApplication, QMetaObject, QObject, QPoint,
    QRect, QSize, QUrl, Qt)
from PySide2.QtGui import (QBrush, QColor, QConicalGradient, QFont,
    QFontDatabase, QIcon, QLinearGradient, QPalette, QPainter, QPixmap,
    QRadialGradient)
from PySide2.QtWidgets import *

class Ui_Dialog(object):
    def setupUi(self, Dialog):
        if Dialog.objectName():
            Dialog.setObjectName(u"Dialog")
        Dialog.resize(400, 395)
        self.lineEditFood = QLineEdit(Dialog)
        self.lineEditFood.setObjectName(u"lineEditFood")
        self.lineEditFood.setGeometry(QRect(140, 30, 231, 31))
        self.listWidgetSelectedItems = QListWidget(Dialog)
        QListWidgetItem(self.listWidgetSelectedItems)
        QListWidgetItem(self.listWidgetSelectedItems)
        QListWidgetItem(self.listWidgetSelectedItems)
        QListWidgetItem(self.listWidgetSelectedItems)
        QListWidgetItem(self.listWidgetSelectedItems)
        self.listWidgetSelectedItems.setObjectName(u"listWidgetSelectedItems")
        self.listWidgetSelectedItems.setGeometry(QRect(30, 90, 341, 221))
        self.pushButtonAdd = QPushButton(Dialog)
        self.pushButtonAdd.setObjectName(u"pushButtonAdd")
        self.pushButtonAdd.setGeometry(QRect(26, 30, 91, 28))
        self.pushButtonEdit = QPushButton(Dialog)
        self.pushButtonEdit.setObjectName(u"pushButtonEdit")
        self.pushButtonEdit.setGeometry(QRect(30, 330, 93, 28))
        self.pushButtonDelete = QPushButton(Dialog)
        self.pushButtonDelete.setObjectName(u"pushButtonDelete")
        self.pushButtonDelete.setGeometry(QRect(150, 330, 93, 28))
        self.pushButtonDeleteAll = QPushButton(Dialog)
        self.pushButtonDeleteAll.setObjectName(u"pushButtonDeleteAll")
        self.pushButtonDeleteAll.setGeometry(QRect(270, 330, 93, 28))

        self.retranslateUi(Dialog)
        self.pushButtonDeleteAll.clicked.connect(self.listWidgetSelectedItems.clear)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))

        __sortingEnabled = self.listWidgetSelectedItems.isSortingEnabled()
        self.listWidgetSelectedItems.setSortingEnabled(False)
        ___qlistwidgetitem = self.listWidgetSelectedItems.item(0)
        ___qlistwidgetitem.setText(QCoreApplication.translate("Dialog", u"Ice Cream", None));
        ___qlistwidgetitem1 = self.listWidgetSelectedItems.item(1)
        ___qlistwidgetitem1.setText(QCoreApplication.translate("Dialog", u"Apple", None));
        ___qlistwidgetitem2 = self.listWidgetSelectedItems.item(2)
        ___qlistwidgetitem2.setText(QCoreApplication.translate("Dialog", u"Soda", None));
        ___qlistwidgetitem3 = self.listWidgetSelectedItems.item(3)
        ___qlistwidgetitem3.setText(QCoreApplication.translate("Dialog", u"Coffee", None));
        ___qlistwidgetitem4 = self.listWidgetSelectedItems.item(4)
        ___qlistwidgetitem4.setText(QCoreApplication.translate("Dialog", u"Chocolate", None));
        self.listWidgetSelectedItems.setSortingEnabled(__sortingEnabled)

        self.pushButtonAdd.setText(QCoreApplication.translate("Dialog", u"Add Item", None))
        self.pushButtonEdit.setText(QCoreApplication.translate("Dialog", u"Edit", None))
        self.pushButtonDelete.setText(QCoreApplication.translate("Dialog", u"Delete", None))
        self.pushButtonDeleteAll.setText(QCoreApplication.translate("Dialog", u"Delete All", None))
    # retranslateUi

