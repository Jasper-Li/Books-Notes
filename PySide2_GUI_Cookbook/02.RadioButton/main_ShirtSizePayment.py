import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_ShirtSizePayment import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.radioButtonM.toggled.connect(self.set_selected)
        self.ui.radioButtonL.toggled.connect(self.set_selected)
        self.ui.radioButtonXL.toggled.connect(self.set_selected)
        self.ui.radioButtonXXL.toggled.connect(self.set_selected)
        self.ui.radioButtonCard.toggled.connect(self.set_selected)
        self.ui.radioButtonNetBanking.toggled.connect(self.set_selected)
        self.ui.radioButtonCashOnDelivery.toggled.connect(self.set_selected)
    def set_selected(self):
        size = ""
        payment = ""
        if self.ui.radioButtonM.isChecked():
            size = "M"
        elif self.ui.radioButtonL.isChecked():
            size = "L"
        elif self.ui.radioButtonXL.isChecked():
            size = "XL"
        elif self.ui.radioButtonXXL.isChecked():
            size = "XXL"

        if self.ui.radioButtonCard.isChecked():
            payment = "Debit/Credit Card"
        elif self.ui.radioButtonNetBanking.isChecked():
            payment = "Net Banking"
        elif self.ui.radioButtonCashOnDelivery.isChecked():
            payment = "Cash On Delivery"
        self.ui.labelSelected.setText("Chosen shirt size: %s, payment method: %s"%(size, payment))
if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
