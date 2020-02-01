# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog
#from PySide2.QtCore import QString

# custom lib
from ui_AccountType import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.comboBoxAccountType.activated.connect(self.update_account_type)
    def update_account_type(self):
        text = self.ui.comboBoxAccountType.currentText()
        self.ui.labelAccountType.setText("You have selected '" + text + "'.")

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
