import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_IcecreamDrinks import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.groupBoxDrinks.toggled.connect(self.disp_amount)
        self.ui.groupBoxIceCreams.toggled.connect(self.disp_amount)
        self.ui.checkBoxCoffee.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxSoda.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxTea.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxChips.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxChocolate.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxCookie.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxRockyRoad.stateChanged.connect(self.disp_amount)
        self.disp_amount()

    def disp_amount(self):
        amount = 0
        if self.ui.groupBoxDrinks.isChecked():
            if self.ui.checkBoxCoffee.isChecked():
                amount += 2
            if self.ui.checkBoxSoda.isChecked():
                amount += 3
            if self.ui.checkBoxTea.isChecked():
                amount += 1

        if self.ui.groupBoxIceCreams.isChecked():
            if self.ui.checkBoxChips.isChecked():
                amount += 4
            if self.ui.checkBoxCookie.isChecked():
                amount += 2
            if self.ui.checkBoxChocolate.isChecked():
                amount += 3
            if self.ui.checkBoxRockyRoad.isChecked():
                amount += 5
        self.ui.labelAmount.setText("Amount: %d"%(amount))
if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
