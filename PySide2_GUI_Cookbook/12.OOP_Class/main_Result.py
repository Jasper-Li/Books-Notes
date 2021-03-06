# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_Result import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.show_info)
        self.show_info()
    def show_info(self):
        name = self.ui.lineEditName.text()
        ID = self.ui.lineEditID.text()
        history = self.ui.lineEditHistoryMark.text()
        geography = self.ui.lineEditGeogMark.text()
        result = Result(name, ID, history, geography)
        show_info = result.show_info()
        self.ui.labelResp.setText(show_info)
        self.ui.lineEditTotalMarks.setText(str(result.total))
        self.ui.lineEditPercentage.setText(str(result.percentage))

class Student():
    def __init__(self, name, ID):
        self.name = name
        self.ID = ID
    def show_info(self):
        return 'ID: %s, name: %s'%(self.ID, self.name)
class Mark(Student):
    def __init__(self, name, ID, history, geography):
        super().__init__(name, ID)
        self.history = history
        self.geography = geography
    def show_info(self):
        super_text = super().show_info()
        current = '\nhistory: %s, geography: %s'%(self.history, self.geography)
        text = super_text + current
        return text
class Result(Mark):
    def __init__(self, name, ID, history, geography):
        super().__init__(name, ID, history, geography)
        self.total = int(history) + int(geography)
        self.percentage = self.total/200 * 100

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
