# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'IcecreamDrinks.ui'
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
        Dialog.resize(525, 420)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(240, 20, 71, 16))
        font = QFont()
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75);
        self.label.setFont(font)
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(20, 70, 72, 16))
        font1 = QFont()
        font1.setPointSize(12)
        self.label_2.setFont(font1)
        self.label_3 = QLabel(Dialog)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(20, 220, 72, 16))
        self.label_3.setFont(font1)
        self.labelAmount = QLabel(Dialog)
        self.labelAmount.setObjectName(u"labelAmount")
        self.labelAmount.setGeometry(QRect(20, 360, 481, 31))
        self.labelAmount.setFont(font1)
        self.groupBoxIceCreams = QGroupBox(Dialog)
        self.groupBoxIceCreams.setObjectName(u"groupBoxIceCreams")
        self.groupBoxIceCreams.setGeometry(QRect(130, 50, 221, 140))
        self.groupBoxIceCreams.setCheckable(True)
        self.widget = QWidget(self.groupBoxIceCreams)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(10, 20, 201, 100))
        self.verticalLayout = QVBoxLayout(self.widget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.checkBoxChips = QCheckBox(self.widget)
        self.checkBoxChips.setObjectName(u"checkBoxChips")
        self.checkBoxChips.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxChips)

        self.checkBoxCookie = QCheckBox(self.widget)
        self.checkBoxCookie.setObjectName(u"checkBoxCookie")
        self.checkBoxCookie.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxCookie)

        self.checkBoxChocolate = QCheckBox(self.widget)
        self.checkBoxChocolate.setObjectName(u"checkBoxChocolate")
        self.checkBoxChocolate.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxChocolate)

        self.checkBoxRockyRoad = QCheckBox(self.widget)
        self.checkBoxRockyRoad.setObjectName(u"checkBoxRockyRoad")
        self.checkBoxRockyRoad.setFont(font1)

        self.verticalLayout.addWidget(self.checkBoxRockyRoad)

        self.groupBoxDrinks = QGroupBox(Dialog)
        self.groupBoxDrinks.setObjectName(u"groupBoxDrinks")
        self.groupBoxDrinks.setGeometry(QRect(130, 220, 137, 134))
        self.groupBoxDrinks.setCheckable(True)
        self.widget1 = QWidget(self.groupBoxDrinks)
        self.widget1.setObjectName(u"widget1")
        self.widget1.setGeometry(QRect(20, 30, 97, 74))
        self.verticalLayout_2 = QVBoxLayout(self.widget1)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.verticalLayout_2.setContentsMargins(0, 0, 0, 0)
        self.checkBoxCoffee = QCheckBox(self.widget1)
        self.checkBoxCoffee.setObjectName(u"checkBoxCoffee")
        self.checkBoxCoffee.setFont(font1)

        self.verticalLayout_2.addWidget(self.checkBoxCoffee)

        self.checkBoxSoda = QCheckBox(self.widget1)
        self.checkBoxSoda.setObjectName(u"checkBoxSoda")
        self.checkBoxSoda.setFont(font1)

        self.verticalLayout_2.addWidget(self.checkBoxSoda)

        self.checkBoxTea = QCheckBox(self.widget1)
        self.checkBoxTea.setObjectName(u"checkBoxTea")
        self.checkBoxTea.setFont(font1)

        self.verticalLayout_2.addWidget(self.checkBoxTea)


        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Menu", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"IceCreams", None))
        self.label_3.setText(QCoreApplication.translate("Dialog", u"Drinks", None))
        self.labelAmount.setText(QCoreApplication.translate("Dialog", u"Amount", None))
        self.groupBoxIceCreams.setTitle(QCoreApplication.translate("Dialog", u"IceCreams", None))
        self.checkBoxChips.setText(QCoreApplication.translate("Dialog", u"Mint Choclate Chips $4", None))
        self.checkBoxCookie.setText(QCoreApplication.translate("Dialog", u"Cookie Dough $2", None))
        self.checkBoxChocolate.setText(QCoreApplication.translate("Dialog", u"Chocolate Almond $3", None))
        self.checkBoxRockyRoad.setText(QCoreApplication.translate("Dialog", u"Rocky road $5", None))
        self.groupBoxDrinks.setTitle(QCoreApplication.translate("Dialog", u"Drinks", None))
        self.checkBoxCoffee.setText(QCoreApplication.translate("Dialog", u"Coffee $2", None))
        self.checkBoxSoda.setText(QCoreApplication.translate("Dialog", u"Soda $3", None))
        self.checkBoxTea.setText(QCoreApplication.translate("Dialog", u"Tea $1", None))
    # retranslateUi

