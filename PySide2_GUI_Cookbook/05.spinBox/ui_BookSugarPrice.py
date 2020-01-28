# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'BookSugarPrice.ui'
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
        Dialog.resize(543, 300)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(30, 70, 30, 15))
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(30, 120, 38, 15))
        self.lineEditBookUnitPrice = QLineEdit(Dialog)
        self.lineEditBookUnitPrice.setObjectName(u"lineEditBookUnitPrice")
        self.lineEditBookUnitPrice.setGeometry(QRect(100, 70, 113, 21))
        self.lineEditSugarUnitPrice = QLineEdit(Dialog)
        self.lineEditSugarUnitPrice.setObjectName(u"lineEditSugarUnitPrice")
        self.lineEditSugarUnitPrice.setGeometry(QRect(100, 120, 113, 21))
        self.lineEditSugarAmount = QLineEdit(Dialog)
        self.lineEditSugarAmount.setObjectName(u"lineEditSugarAmount")
        self.lineEditSugarAmount.setEnabled(False)
        self.lineEditSugarAmount.setGeometry(QRect(400, 120, 113, 21))
        self.lineEditBookAmount = QLineEdit(Dialog)
        self.lineEditBookAmount.setObjectName(u"lineEditBookAmount")
        self.lineEditBookAmount.setEnabled(False)
        self.lineEditBookAmount.setGeometry(QRect(400, 70, 113, 21))
        self.spinBox = QSpinBox(Dialog)
        self.spinBox.setObjectName(u"spinBox")
        self.spinBox.setGeometry(QRect(270, 70, 42, 22))
        self.doubleSpinBox = QDoubleSpinBox(Dialog)
        self.doubleSpinBox.setObjectName(u"doubleSpinBox")
        self.doubleSpinBox.setGeometry(QRect(270, 120, 63, 22))
        self.doubleSpinBox.setSingleStep(0.010000000000000)
        self.label_3 = QLabel(Dialog)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(100, 20, 83, 15))
        self.label_4 = QLabel(Dialog)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setGeometry(QRect(400, 20, 90, 15))
        self.label_5 = QLabel(Dialog)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setGeometry(QRect(270, 20, 83, 15))
        self.label_6 = QLabel(Dialog)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setGeometry(QRect(280, 230, 90, 16))
        self.lineEditTotalAmount = QLineEdit(Dialog)
        self.lineEditTotalAmount.setObjectName(u"lineEditTotalAmount")
        self.lineEditTotalAmount.setEnabled(False)
        self.lineEditTotalAmount.setGeometry(QRect(400, 230, 113, 21))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Book", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Sugar", None))
        self.lineEditBookUnitPrice.setText(QCoreApplication.translate("Dialog", u"0", None))
        self.lineEditSugarUnitPrice.setText(QCoreApplication.translate("Dialog", u"0", None))
        self.label_3.setText(QCoreApplication.translate("Dialog", u"Unit Price ", None))
        self.label_4.setText(QCoreApplication.translate("Dialog", u"Total Price ", None))
        self.label_5.setText(QCoreApplication.translate("Dialog", u"Quantity", None))
        self.label_6.setText(QCoreApplication.translate("Dialog", u"Total amount", None))
    # retranslateUi

