import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_Pizza import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.checkBoxCheese.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxOlive.stateChanged.connect(self.disp_amount)
        self.ui.checkBoxSausage.stateChanged.connect(self.disp_amount)
        self.disp_amount()

    def disp_amount(self):
        amount = 10
        if self.ui.checkBoxCheese.isChecked():
            amount += 1
        if self.ui.checkBoxOlive.isChecked():
            amount += 1
        if self.ui.checkBoxSausage.isChecked():
            amount += 2
        self.ui.labelAmount.setText("Amount: %d"%(amount))

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
