# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'MedicalDiagnosis2.ui'
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
        Dialog.resize(697, 309)
        self.label = QLabel(Dialog)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(20, 20, 201, 16))
        self.listWidgetDiagnosis = QListWidget(Dialog)
        QListWidgetItem(self.listWidgetDiagnosis)
        QListWidgetItem(self.listWidgetDiagnosis)
        QListWidgetItem(self.listWidgetDiagnosis)
        QListWidgetItem(self.listWidgetDiagnosis)
        QListWidgetItem(self.listWidgetDiagnosis)
        self.listWidgetDiagnosis.setObjectName(u"listWidgetDiagnosis")
        self.listWidgetDiagnosis.setGeometry(QRect(30, 50, 301, 171))
        self.listWidgetDiagnosis.setMinimumSize(QSize(301, 0))
        self.listWidgetDiagnosis.setSelectionMode(QAbstractItemView.MultiSelection)
        self.label_2 = QLabel(Dialog)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(350, 20, 201, 16))
        self.listWidgetSelected = QListWidget(Dialog)
        self.listWidgetSelected.setObjectName(u"listWidgetSelected")
        self.listWidgetSelected.setGeometry(QRect(370, 50, 291, 171))

        self.retranslateUi(Dialog)

        QMetaObject.connectSlotsByName(Dialog)
    # setupUi

    def retranslateUi(self, Dialog):
        Dialog.setWindowTitle(QCoreApplication.translate("Dialog", u"Dialog", None))
        self.label.setText(QCoreApplication.translate("Dialog", u"Choose Diagnosis Tests", None))

        __sortingEnabled = self.listWidgetDiagnosis.isSortingEnabled()
        self.listWidgetDiagnosis.setSortingEnabled(False)
        ___qlistwidgetitem = self.listWidgetDiagnosis.item(0)
        ___qlistwidgetitem.setText(QCoreApplication.translate("Dialog", u"Urine Analysis $5", None));
        ___qlistwidgetitem1 = self.listWidgetDiagnosis.item(1)
        ___qlistwidgetitem1.setText(QCoreApplication.translate("Dialog", u"Chest X ray $100", None));
        ___qlistwidgetitem2 = self.listWidgetDiagnosis.item(2)
        ___qlistwidgetitem2.setText(QCoreApplication.translate("Dialog", u"Sugar Level Test $3", None));
        ___qlistwidgetitem3 = self.listWidgetDiagnosis.item(3)
        ___qlistwidgetitem3.setText(QCoreApplication.translate("Dialog", u"Hermoglobin $7", None));
        ___qlistwidgetitem4 = self.listWidgetDiagnosis.item(4)
        ___qlistwidgetitem4.setText(QCoreApplication.translate("Dialog", u"Tyroid Stimulate Hermone Test $10", None));
        self.listWidgetDiagnosis.setSortingEnabled(__sortingEnabled)

        self.label_2.setText(QCoreApplication.translate("Dialog", u"Selected Diagnosis Tests", None))
    # retranslateUi

