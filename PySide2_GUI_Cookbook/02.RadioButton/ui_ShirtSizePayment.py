# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'ShirtSizePayment.ui'
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
        self.label.setGeometry(QRect(10, 20, 331, 16))
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(10, 140, 331, 16))
        self.labelSelected = QLabel(Dialog)
        self.labelSelected.setObjectName(u"labelSelected")
        self.labelSelected.setGeometry(QRect(10, 260, 361, 16))
        self.widget = QWidget(Dialog)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(30, 40, 43, 84))
        self.verticalLayoutSize = QVBoxLayout(self.widget)
        self.verticalLayoutSize.setObjectName(u"verticalLayoutSize")
        self.verticalLayoutSize.setContentsMargins(0, 0, 0, 0)
        self.radioButtonM = QRadioButton(self.widget)
        self.radioButtonM.setObjectName(u"radioButtonM")

        self.verticalLayoutSize.addWidget(self.radioButtonM)

        self.radioButtonL = QRadioButton(self.widget)
        self.radioButtonL.setObjectName(u"radioButtonL")

        self.verticalLayoutSize.addWidget(self.radioButtonL)

        self.radioButtonXL = QRadioButton(self.widget)
        self.radioButtonXL.setObjectName(u"radioButtonXL")

        self.verticalLayoutSize.addWidget(self.radioButtonXL)

        self.radioButtonXXL = QRadioButton(self.widget)
        self.radioButtonXXL.setObjectName(u"radioButtonXXL")

        self.verticalLayoutSize.addWidget(self.radioButtonXXL)

        self.widget1 = QWidget(Dialog)
        self.widget1.setObjectName(u"widget1")
        self.widget1.setGeometry(QRect(30, 170, 127, 62))
        self.verticalLayoutPayment = QVBoxLayout(self.widget1)
        self.verticalLayoutPayment.setObjectName(u"verticalLayoutPayment")
        self.verticalLayoutPayment.setContentsMargins(0, 0, 0, 0)
        self.radioButtonCard = QRadioButton(self.widget1)
        self.radioButtonCard.setObjectName(u"radioButtonCard")

        self.verticalLayoutPayment.addWidget(self.radioButtonCard)

        self.radioButtonNetBanking = QRadioButton(self.widget1)
        self.radioButtonNetBanking.setObjectName(u"radioButtonNetBanking")

        self.verticalLayoutPayment.addWidget(self.radioButtonNetBanking)

        self.radioButtonCashOnDelivery = QRadioButton(self.widget1)
        self.radioButtonCashOnDelivery.setObjectName(u"radioButtonCashOnDelivery")

        self.verticalLayoutPayment.addWidget(self.radioButtonCashOnDelivery)


        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Choose your Shirt Size", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Choose your payment method", None))
        self.labelSelected.setText("")
        self.radioButtonM.setText(QCoreApplication.translate("Dialog", u"M", None))
        self.radioButtonL.setText(QCoreApplication.translate("Dialog", u"L", None))
        self.radioButtonXL.setText(QCoreApplication.translate("Dialog", u"XL", None))
        self.radioButtonXXL.setText(QCoreApplication.translate("Dialog", u"XXL", None))
        self.radioButtonCard.setText(QCoreApplication.translate("Dialog", u"Debit/Credit Card", None))
        self.radioButtonNetBanking.setText(QCoreApplication.translate("Dialog", u"Net Banking", None))
        self.radioButtonCashOnDelivery.setText(QCoreApplication.translate("Dialog", u"Cash on Delivery", None))
    # retranslateUi

