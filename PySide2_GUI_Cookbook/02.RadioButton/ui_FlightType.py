# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'FlightType.ui'
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
        self.radioButtonFirstClass = QRadioButton(Dialog)
        self.radioButtonFirstClass.setObjectName(u"radioButtonFirstClass")
        self.radioButtonFirstClass.setGeometry(QRect(40, 90, 241, 19))
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(60, 40, 251, 16))
        self.labelFare = QLabel(Dialog)
        self.labelFare.setObjectName(u"labelFare")
        self.labelFare.setGeometry(QRect(50, 230, 251, 16))
        self.radioButtonBussinessClass = QRadioButton(Dialog)
        self.radioButtonBussinessClass.setObjectName(u"radioButtonBussinessClass")
        self.radioButtonBussinessClass.setGeometry(QRect(40, 130, 241, 19))
        self.radioButtonEconomyClass = QRadioButton(Dialog)
        self.radioButtonEconomyClass.setObjectName(u"radioButtonEconomyClass")
        self.radioButtonEconomyClass.setGeometry(QRect(40, 170, 191, 19))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.radioButtonFirstClass.setText(QCoreApplication.translate("Dialog", u"First Class $150", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Choose the flight type", None))
        self.labelFare.setText("")
        self.radioButtonBussinessClass.setText(QCoreApplication.translate("Dialog", u"Bussiness Class $125", None))
        self.radioButtonEconomyClass.setText(QCoreApplication.translate("Dialog", u"Ecnomics Class $100", None))
    # retranslateUi

