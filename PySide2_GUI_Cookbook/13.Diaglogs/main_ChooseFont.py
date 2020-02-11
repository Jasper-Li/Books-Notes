# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog, QFontDialog

# custom lib
from ui_ChooseFont import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.textEdit.setText("Hello World. 你好")
        self.ui.pushButton.clicked.connect(self.change_font)
    def change_font(self):
        ok, font = QFontDialog.getFont()
        if ok:
            self.ui.textEdit.setFont(font)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
