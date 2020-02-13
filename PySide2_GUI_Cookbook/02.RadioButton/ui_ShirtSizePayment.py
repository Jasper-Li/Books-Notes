# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'ShirtSizePayment.ui'
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
        Dialog.resize(400, 352)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(10, 20, 331, 16))
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(10, 140, 331, 16))
        self.labelSelected = QLabel(Dialog)
        self.labelSelected.setObjectName(u"labelSelected")
        self.labelSelected.setGeometry(QRect(20, 260, 351, 51))
        self.layoutWidget = QWidget(Dialog)
        self.layoutWidget.setObjectName(u"layoutWidget")
        self.layoutWidget.setGeometry(QRect(30, 40, 53, 96))
        self.verticalLayoutSize = QVBoxLayout(self.layoutWidget)
        self.verticalLayoutSize.setObjectName(u"verticalLayoutSize")
        self.verticalLayoutSize.setContentsMargins(0, 0, 0, 0)
        self.radioButtonM = QRadioButton(self.layoutWidget)
        self.radioButtonM.setObjectName(u"radioButtonM")

        self.verticalLayoutSize.addWidget(self.radioButtonM)

        self.radioButtonL = QRadioButton(self.layoutWidget)
        self.radioButtonL.setObjectName(u"radioButtonL")

        self.verticalLayoutSize.addWidget(self.radioButtonL)

        self.radioButtonXL = QRadioButton(self.layoutWidget)
        self.radioButtonXL.setObjectName(u"radioButtonXL")

        self.verticalLayoutSize.addWidget(self.radioButtonXL)

        self.radioButtonXXL = QRadioButton(self.layoutWidget)
        self.radioButtonXXL.setObjectName(u"radioButtonXXL")

        self.verticalLayoutSize.addWidget(self.radioButtonXXL)

        self.layoutWidget1 = QWidget(Dialog)
        self.layoutWidget1.setObjectName(u"layoutWidget1")
        self.layoutWidget1.setGeometry(QRect(30, 170, 165, 71))
        self.verticalLayoutPayment = QVBoxLayout(self.layoutWidget1)
        self.verticalLayoutPayment.setObjectName(u"verticalLayoutPayment")
        self.verticalLayoutPayment.setContentsMargins(0, 0, 0, 0)
        self.radioButtonCard = QRadioButton(self.layoutWidget1)
        self.radioButtonCard.setObjectName(u"radioButtonCard")

        self.verticalLayoutPayment.addWidget(self.radioButtonCard)

        self.radioButtonNetBanking = QRadioButton(self.layoutWidget1)
        self.radioButtonNetBanking.setObjectName(u"radioButtonNetBanking")

        self.verticalLayoutPayment.addWidget(self.radioButtonNetBanking)

        self.radioButtonCashOnDelivery = QRadioButton(self.layoutWidget1)
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

