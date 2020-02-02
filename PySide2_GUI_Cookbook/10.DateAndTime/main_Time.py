# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog
from PySide2.QtCore import QTimer, QTime

# custom lib
from ui_Time import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.timer = QTimer(self)
        self.timer.timeout.connect(self.show_lcd)
        self.show_lcd()
        self.timer.start(1000)

    def show_lcd(self):
        time = QTime.currentTime().toString()
        print(time)
        self.ui.lcdNumber.display(time)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
