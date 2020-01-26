# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'Calclator.ui'
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
        Dialog.resize(523, 379)
        self.layoutWidget = QWidget(Dialog)
        self.layoutWidget.setObjectName(u"layoutWidget")
        self.layoutWidget.setGeometry(QRect(60, 140, 193, 34))
        self.horizontalLayout_2 = QHBoxLayout(self.layoutWidget)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.horizontalLayout_2.setContentsMargins(0, 0, 0, 0)
        self.label_2 = QLabel(self.layoutWidget)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setMargin(10)

        self.horizontalLayout_2.addWidget(self.label_2)

        self.lineEditNum2 = QLineEdit(self.layoutWidget)
        self.lineEditNum2.setObjectName(u"lineEditNum2")

        self.horizontalLayout_2.addWidget(self.lineEditNum2)

        self.labelResult = QLabel(Dialog)
        self.labelResult.setObjectName(u"labelResult")
        self.labelResult.setGeometry(QRect(70, 260, 401, 16))
        self.pushButtonPlus = QPushButton(Dialog)
        self.pushButtonPlus.setObjectName(u"pushButtonPlus")
        self.pushButtonPlus.setGeometry(QRect(330, 80, 31, 28))
        self.pushButtonSubtract = QPushButton(Dialog)
        self.pushButtonSubtract.setObjectName(u"pushButtonSubtract")
        self.pushButtonSubtract.setGeometry(QRect(390, 80, 31, 28))
        self.pushButtonDivide = QPushButton(Dialog)
        self.pushButtonDivide.setObjectName(u"pushButtonDivide")
        self.pushButtonDivide.setGeometry(QRect(390, 140, 31, 28))
        self.pushButtonMultiply = QPushButton(Dialog)
        self.pushButtonMultiply.setObjectName(u"pushButtonMultiply")
        self.pushButtonMultiply.setGeometry(QRect(330, 140, 31, 28))
        self.widget = QWidget(Dialog)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(60, 80, 193, 34))
        self.horizontalLayout = QHBoxLayout(self.widget)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.label = QLabel(self.widget)
        self.label.setObjectName(u"label")
        self.label.setMargin(10)

        self.horizontalLayout.addWidget(self.label)

        self.lineEditNum1 = QLineEdit(self.widget)
        self.lineEditNum1.setObjectName(u"lineEditNum1")

        self.horizontalLayout.addWidget(self.lineEditNum1)


        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Number 2", None))
        self.labelResult.setText("")
        self.pushButtonPlus.setText(QCoreApplication.translate("Dialog", u"+", None))
        self.pushButtonSubtract.setText(QCoreApplication.translate("Dialog", u"-", None))
        self.pushButtonDivide.setText(QCoreApplication.translate("Dialog", u"/", None))
        self.pushButtonMultiply.setText(QCoreApplication.translate("Dialog", u"*", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Number 1", None))
    # retranslateUi

