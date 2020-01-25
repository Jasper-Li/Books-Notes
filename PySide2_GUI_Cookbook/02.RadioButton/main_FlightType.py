import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_FlightType import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
#        super().__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.radioButtonFirstClass.toggled.connect(self.disp_fare)
        self.ui.radioButtonBussinessClass.toggled.connect(self.disp_fare)
        self.ui.radioButtonEconomyClass.toggled.connect(self.disp_fare)

    def disp_fare(self):
        if self.ui.radioButtonFirstClass.isChecked():
            fare = 150
        elif self.ui.radioButtonBussinessClass.isChecked():
            fare = 125
        elif self.ui.radioButtonEconomyClass.isChecked():
            fare = 100
        else:
            fare = 0
        self.ui.labelFare.setText("Air Fare is " + str(fare))
if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
