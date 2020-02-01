# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'AccountType.ui'
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
        Dialog.resize(430, 142)
        self.comboBoxAccountType = QComboBox(Dialog)
        self.comboBoxAccountType.addItem("")
        self.comboBoxAccountType.addItem("")
        self.comboBoxAccountType.addItem("")
        self.comboBoxAccountType.addItem("")
        self.comboBoxAccountType.setObjectName(u"comboBoxAccountType")
        self.comboBoxAccountType.setGeometry(QRect(20, 50, 311, 22))
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(20, 20, 171, 16))
        self.labelAccountType = QLabel(Dialog)
        self.labelAccountType.setObjectName(u"labelAccountType")
        self.labelAccountType.setGeometry(QRect(22, 101, 381, 20))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.comboBoxAccountType.setItemText(0, QCoreApplication.translate("Dialog", u"Saving Account", None))
        self.comboBoxAccountType.setItemText(1, QCoreApplication.translate("Dialog", u"Current Account", None))
        self.comboBoxAccountType.setItemText(2, QCoreApplication.translate("Dialog", u"Recurring Deposit Account", None))
        self.comboBoxAccountType.setItemText(3, QCoreApplication.translate("Dialog", u"Fixed Deposit Account", None))

        self.label.setText(QCoreApplication.translate("Dialog", u"Select Your Bank Type", None))
        self.labelAccountType.setText("")
    # retranslateUi

