import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_MedicalDiagnosis1 import Ui_Dialog
from pdb import set_trace

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.listWidget.itemClicked.connect(self.disp_selected_text)
    def disp_selected_text(self):
        buf = self.ui.listWidget.currentItem().text()
#        set_trace()
        self.ui.labelResult.setText("you select: " + buf)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
