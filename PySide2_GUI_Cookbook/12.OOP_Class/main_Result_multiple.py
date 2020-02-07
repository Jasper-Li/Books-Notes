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
        history = float(self.ui.lineEditHistoryMark.text())
        geography = float(self.ui.lineEditGeogMark.text())
        result = Result(name, ID, history, geography)
        #show_info = result.show_info()
        #self.ui.labelResp.setText(show_info)
        self.ui.lineEditTotalMarks.setText(str(result.total))
        self.ui.lineEditPercentage.setText(str(result.percentage))

class Student():
    def __init__(self, name, ID):
        self.name = name
        self.ID = ID
    def show_info(self):
        return 'ID: %s, name: %s'%(self.ID, self.name)
class Mark():
    def __init__(self, history, geography):
        self.history = history
        self.geography = geography
    def show_info(self):
        text = 'history: %s, geography: %s'%(self.history, self.geography)
        return text
class Result(Mark, Student):
    def __init__(self, name, ID, history, geography):
        Student.__init__(self, name, ID)
        Mark.__init__(self, history, geography)
        self.total = history + geography
        self.percentage = round(self.total/200 * 100, 2)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
