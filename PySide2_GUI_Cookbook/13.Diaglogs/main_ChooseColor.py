# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog, QColorDialog
from PySide2.QtGui import QColor

# custom lib
from ui_ChooseColor import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        color = QColor(0,0,0)
        self.set_color(self.ui.frame, color)
        self.ui.label.setText('Set initial color to '+color.name())
        self.ui.pushButton.clicked.connect(self.choose_color)
    def choose_color(self):
        color = QColorDialog.getColor()
        #print(color)
        if color.isValid():
            self.set_color(self.ui.frame, color)
            self.ui.label.setText('Set color to '+color.name())


    def set_color(self, frame, color):
        #print('set frame color to ', color)
        style = "QWidget { background-color: %s}"%(color.name())
        frame.setStyleSheet(style)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
