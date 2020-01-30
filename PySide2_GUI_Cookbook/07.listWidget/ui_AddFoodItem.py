# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'AddFoodItem.ui'
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
        Dialog.resize(400, 345)
        self.lineEditFood = QLineEdit(Dialog)
        self.lineEditFood.setObjectName(u"lineEditFood")
        self.lineEditFood.setGeometry(QRect(140, 30, 231, 31))
        self.listWidgetSelectedItems = QListWidget(Dialog)
        self.listWidgetSelectedItems.setObjectName(u"listWidgetSelectedItems")
        self.listWidgetSelectedItems.setGeometry(QRect(30, 90, 341, 221))
        self.pushButtonAdd = QPushButton(Dialog)
        self.pushButtonAdd.setObjectName(u"pushButtonAdd")
        self.pushButtonAdd.setGeometry(QRect(26, 30, 91, 28))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.pushButtonAdd.setText(QCoreApplication.translate("Dialog", u"Add Food", None))
    # retranslateUi

