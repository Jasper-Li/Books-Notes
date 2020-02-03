# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog
from PySide2.QtCore import QDate

# custom lib
from ui_ChangeDate import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        today = QDate.currentDate()
        self.ui.dateEdit.setDate(today)
        self.ui.calendarWidget.selectionChanged.connect(self.update_dateEdit)
    def update_dateEdit(self):
        day = self.ui.calendarWidget.selectedDate()
        self.ui.dateEdit.setDate(day)
        

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
