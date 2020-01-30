# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_AddFoodItem import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButtonAdd.clicked.connect(self.add_item)

    def add_item(self):
        self.ui.listWidgetSelectedItems.addItem(self.ui.lineEditFood.text())
        self.ui.lineEditFood.clear()
        self.ui.lineEditFood.setFocus()

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
