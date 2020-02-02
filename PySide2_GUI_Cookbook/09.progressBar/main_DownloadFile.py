# standard lib
import sys
from pdb import set_trace
import time

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_DownloadFile import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.update_bar)
    def update_bar(self):
        i = 0
        while i < 100:
            i += 1
            time.sleep(0.02)
            self.ui.progressBar.setValue(i)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
