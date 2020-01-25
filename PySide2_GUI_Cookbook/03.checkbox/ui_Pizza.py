# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'pizza.ui'
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
        Dialog.resize(400, 300)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(30, 20, 136, 16))
        font = QFont()
        font.setPointSize(12)
        font.setBold(False)
        font.setWeight(50);
        self.label.setFont(font)
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(30, 80, 136, 16))
        self.label_2.setFont(font)
        self.labelAmount = QLabel(Dialog)
        self.labelAmount.setObjectName(u"labelAmount")
        self.labelAmount.setGeometry(QRect(30, 250, 136, 16))
        self.labelAmount.setFont(font)
        self.widget = QWidget(Dialog)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(230, 80, 100, 71))
        self.verticalLayout = QVBoxLayout(self.widget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.checkBoxCheese = QCheckBox(self.widget)
        self.checkBoxCheese.setObjectName(u"checkBoxCheese")
        font1 = QFont()
        font1.setPointSize(11)
        self.checkBoxCheese.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxCheese)

        self.checkBoxOlive = QCheckBox(self.widget)
        self.checkBoxOlive.setObjectName(u"checkBoxOlive")
        self.checkBoxOlive.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxOlive)

        self.checkBoxSausage = QCheckBox(self.widget)
        self.checkBoxSausage.setObjectName(u"checkBoxSausage")
        self.checkBoxSausage.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxSausage)


        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Regular Pizza $10", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Extra toppings", None))
        self.labelAmount.setText(QCoreApplication.translate("Dialog", u"Amount", None))
        self.checkBoxCheese.setText(QCoreApplication.translate("Dialog", u"Cheese $1", None))
        self.checkBoxOlive.setText(QCoreApplication.translate("Dialog", u"Olive $1", None))
        self.checkBoxSausage.setText(QCoreApplication.translate("Dialog", u"Sausage $2", None))
    # retranslateUi

