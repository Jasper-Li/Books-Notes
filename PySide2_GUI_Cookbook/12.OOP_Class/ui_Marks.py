# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'Marks.ui'
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
        Dialog.resize(400, 337)
        self.pushButton = QPushButton(Dialog)
        self.pushButton.setObjectName(u"pushButton")
        self.pushButton.setGeometry(QRect(150, 200, 93, 28))
        self.labelResp = QLabel(Dialog)
        self.labelResp.setObjectName(u"labelResp")
        self.labelResp.setGeometry(QRect(30, 255, 331, 41))
        self.labelResp.setWordWrap(True)
        self.labelName = QLabel(Dialog)
        self.labelName.setObjectName(u"labelName")
        self.labelName.setGeometry(QRect(30, 70, 101, 16))
        self.lineEditName = QLineEdit(Dialog)
        self.lineEditName.setObjectName(u"lineEditName")
        self.lineEditName.setGeometry(QRect(150, 70, 211, 21))
        self.labelID = QLabel(Dialog)
        self.labelID.setObjectName(u"labelID")
        self.labelID.setGeometry(QRect(50, 30, 80, 15))
        self.lineEditID = QLineEdit(Dialog)
        self.lineEditID.setObjectName(u"lineEditID")
        self.lineEditID.setGeometry(QRect(150, 30, 211, 21))
        self.labelHistoryMark = QLabel(Dialog)
        self.labelHistoryMark.setObjectName(u"labelHistoryMark")
        self.labelHistoryMark.setGeometry(QRect(30, 110, 96, 15))
        self.lineEditGeogMark = QLineEdit(Dialog)
        self.lineEditGeogMark.setObjectName(u"lineEditGeogMark")
        self.lineEditGeogMark.setGeometry(QRect(150, 150, 211, 21))
        self.labelGeogMark = QLabel(Dialog)
        self.labelGeogMark.setObjectName(u"labelGeogMark")
        self.labelGeogMark.setGeometry(QRect(20, 150, 112, 15))
        self.lineEditHistoryMark = QLineEdit(Dialog)
        self.lineEditHistoryMark.setObjectName(u"lineEditHistoryMark")
        self.lineEditHistoryMark.setGeometry(QRect(150, 110, 211, 21))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.pushButton.setText(QCoreApplication.translate("Dialog", u"PushButton", None))
        self.labelResp.setText("")
        self.labelName.setText(QCoreApplication.translate("Dialog", u"Student name", None))
        self.lineEditName.setText(QCoreApplication.translate("Dialog", u"Adam", None))
        self.labelID.setText(QCoreApplication.translate("Dialog", u"Student ID", None))
        self.lineEditID.setText(QCoreApplication.translate("Dialog", u"4527", None))
        self.labelHistoryMark.setText(QCoreApplication.translate("Dialog", u"History Mark", None))
        self.lineEditGeogMark.setText(QCoreApplication.translate("Dialog", u"95", None))
        self.labelGeogMark.setText(QCoreApplication.translate("Dialog", u"Geogrophy Mark", None))
        self.lineEditHistoryMark.setText(QCoreApplication.translate("Dialog", u"90", None))
    # retranslateUi

