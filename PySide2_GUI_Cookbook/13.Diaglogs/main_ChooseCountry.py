# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog, QInputDialog

# custom lib
from ui_ChooseCountry import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.choose_country)
    def choose_country(self):
        countries = (
            "Albania",
             "Algeria",
             "Andorra",
             "Angola",
             "Antigua and Barbuda",
             "Argentina",
             "Armenia",
             "Aruba",
             "Australia",
             "Austria",
             "Azerbaijan")
        country, ok = QInputDialog.getItem(self, "Choose a country", "Choose a country", countries, 0, False)
        if country and ok:
            self.ui.lineEdit.setText(country)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
