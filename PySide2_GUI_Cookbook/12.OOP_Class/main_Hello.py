# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_Hello import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.show_greeting)
    def show_greeting(self):
        name = self.ui.lineEdit.text()
        greeting = Student(name).greeting()
        self.ui.labelResp.setText(greeting)

class Student():
    def __init__(self, name):
        self.name = name
    def greeting(self):
        if self.name:
            return "Hello " + self.name + "!"
        else:
            return "Hello!"

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
