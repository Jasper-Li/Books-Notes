# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'HotelReservation.ui'
##
## Created by: Qt User Interface Compiler version 5.14.1
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import (QCoreApplication, QMetaObject, QObject, QPoint,
    QRect, QSize, QUrl, Qt)
from PySide2.QtGui import (QBrush, QColor, QConicalGradient, QCursor, QFont,
    QFontDatabase, QIcon, QLinearGradient, QPalette, QPainter, QPixmap,
    QRadialGradient)
from PySide2.QtWidgets import *


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        if Dialog.objectName():
            Dialog.setObjectName(u"Dialog")
        Dialog.resize(524, 566)
        self.calendarWidget = QCalendarWidget(Dialog)
        self.calendarWidget.setObjectName(u"calendarWidget")
        self.calendarWidget.setGeometry(QRect(190, 70, 296, 218))
        self.spinBox = QSpinBox(Dialog)
        self.spinBox.setObjectName(u"spinBox")
        self.spinBox.setGeometry(QRect(190, 300, 42, 22))
        self.spinBox.setMinimum(1)
        self.comboBox = QComboBox(Dialog)
        self.comboBox.setObjectName(u"comboBox")
        self.comboBox.setGeometry(QRect(190, 340, 221, 22))
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(25, 180, 91, 20))
        font = QFont()
        font.setPointSize(10)
        self.label.setFont(font)
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(80, 300, 36, 17))
        self.label_2.setFont(font)
        self.label_3 = QLabel(Dialog)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(40, 340, 81, 17))
        self.label_3.setFont(font)
        self.labelEnteredInfo = QLabel(Dialog)
        self.labelEnteredInfo.setObjectName(u"labelEnteredInfo")
        self.labelEnteredInfo.setGeometry(QRect(40, 470, 441, 17))
        font1 = QFont()
        font1.setPointSize(8)
        self.labelEnteredInfo.setFont(font1)
        self.pushButton = QPushButton(Dialog)
        self.pushButton.setObjectName(u"pushButton")
        self.pushButton.setGeometry(QRect(190, 400, 141, 28))
        self.label_5 = QLabel(Dialog)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setGeometry(QRect(140, 20, 242, 20))
        font2 = QFont()
        font2.setPointSize(12)
        font2.setBold(True)
        font2.setWeight(75)
        self.label_5.setFont(font2)
        self.labelRentInfo = QLabel(Dialog)
        self.labelRentInfo.setObjectName(u"labelRentInfo")
        self.labelRentInfo.setGeometry(QRect(40, 520, 441, 20))
        self.labelRentInfo.setFont(font1)

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Start Date", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Days", None))
        self.label_3.setText(QCoreApplication.translate("Dialog", u"Room Type", None))
        self.labelEnteredInfo.setText("")
        self.pushButton.setText(QCoreApplication.translate("Dialog", u"Calculate Room Rent", None))
        self.label_5.setText(QCoreApplication.translate("Dialog", u"Hotel Room Reservation", None))
        self.labelRentInfo.setText("")
    # retranslateUi

