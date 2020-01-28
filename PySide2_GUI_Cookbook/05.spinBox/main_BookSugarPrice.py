import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_BookSugarPrice import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.book_amount = 0
        self.sugar_amount = 0
        self.total_amount = 0
        self.ui.spinBox.valueChanged.connect(self.calc_book_amount)
        self.ui.doubleSpinBox.valueChanged.connect(self.calc_sugar_amount)
        self.calc_book_amount()
        self.calc_sugar_amount()

    def calc_book_amount(self):
        unit = float(self.ui.lineEditBookUnitPrice.text())
        quantity = self.ui.spinBox.value()
        self.book_amount = unit * quantity
        self.calc_total_amount()

        self.ui.lineEditBookAmount.setText(str(self.book_amount))
        self.ui.lineEditTotalAmount.setText(str(self.total_amount))

    def calc_sugar_amount(self):
        unit = float(self.ui.lineEditSugarUnitPrice.text())
        quantity = self.ui.doubleSpinBox.value()
        self.sugar_amount = round(unit * quantity, 2)
        self.calc_total_amount()

        self.ui.lineEditSugarAmount.setText(str(self.sugar_amount))
        self.ui.lineEditTotalAmount.setText(str(self.total_amount))

    def calc_total_amount(self):
        self.total_amount = self.book_amount + self.sugar_amount

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
