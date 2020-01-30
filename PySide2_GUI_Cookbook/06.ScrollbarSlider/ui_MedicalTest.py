# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'MedicalTest.ui'
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
        Dialog.resize(531, 351)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(30, 30, 105, 15))
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(30, 70, 105, 15))
        self.label_3 = QLabel(Dialog)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(30, 140, 91, 16))
        self.label_4 = QLabel(Dialog)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setGeometry(QRect(240, 140, 151, 16))
        self.horizontalScrollBarSugar = QScrollBar(Dialog)
        self.horizontalScrollBarSugar.setObjectName(u"horizontalScrollBarSugar")
        self.horizontalScrollBarSugar.setGeometry(QRect(250, 30, 251, 16))
        self.horizontalScrollBarSugar.setOrientation(Qt.Horizontal)
        self.horizontalSliderBlood = QSlider(Dialog)
        self.horizontalSliderBlood.setObjectName(u"horizontalSliderBlood")
        self.horizontalSliderBlood.setGeometry(QRect(260, 70, 231, 22))
        self.horizontalSliderBlood.setOrientation(Qt.Horizontal)
        self.verticalScrollBarHeart = QScrollBar(Dialog)
        self.verticalScrollBarHeart.setObjectName(u"verticalScrollBarHeart")
        self.verticalScrollBarHeart.setGeometry(QRect(150, 150, 16, 160))
        self.verticalScrollBarHeart.setOrientation(Qt.Vertical)
        self.verticalSliderCholesteral = QSlider(Dialog)
        self.verticalSliderCholesteral.setObjectName(u"verticalSliderCholesteral")
        self.verticalSliderCholesteral.setGeometry(QRect(440, 150, 22, 160))
        self.verticalSliderCholesteral.setOrientation(Qt.Vertical)
        self.lineEditCholesteral = QLineEdit(Dialog)
        self.lineEditCholesteral.setObjectName(u"lineEditCholesteral")
        self.lineEditCholesteral.setGeometry(QRect(240, 170, 51, 21))
        self.lineEditHeart = QLineEdit(Dialog)
        self.lineEditHeart.setObjectName(u"lineEditHeart")
        self.lineEditHeart.setGeometry(QRect(30, 170, 51, 21))
        self.lineEditSugar = QLineEdit(Dialog)
        self.lineEditSugar.setObjectName(u"lineEditSugar")
        self.lineEditSugar.setGeometry(QRect(160, 30, 51, 21))
        self.lineEditBlood = QLineEdit(Dialog)
        self.lineEditBlood.setObjectName(u"lineEditBlood")
        self.lineEditBlood.setGeometry(QRect(160, 70, 51, 21))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Sugar Level", None))
        self.label_2.setText(QCoreApplication.translate("Dialog", u"Blood Pressure", None))
        self.label_3.setText(QCoreApplication.translate("Dialog", u"Heart Rate", None))
        self.label_4.setText(QCoreApplication.translate("Dialog", u"Cholesteral Level", None))
        self.lineEditCholesteral.setText(QCoreApplication.translate("Dialog", u"0", None))
        self.lineEditHeart.setText(QCoreApplication.translate("Dialog", u"0", None))
        self.lineEditSugar.setText(QCoreApplication.translate("Dialog", u"0", None))
        self.lineEditBlood.setText(QCoreApplication.translate("Dialog", u"0", None))
    # retranslateUi

