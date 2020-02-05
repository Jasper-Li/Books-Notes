# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_Student import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.show_show_info)
    def show_show_info(self):
        name = self.ui.lineEditName.text()
        ID = self.ui.lineEditID.text()
        show_info = Student(name, ID).show_info()
        self.ui.labelResp.setText(show_info)

class Student():
    def __init__(self, name, ID):
        self.name = name
        self.ID = ID
    def show_info(self):
        return 'ID: %s, name: %s'%(self.ID, self.name)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
