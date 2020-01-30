import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_MedicalDiagnosis2 import Ui_Dialog
from pdb import set_trace

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.listWidgetDiagnosis.itemSelectionChanged.connect(self.disp_selected)
    def disp_selected(self):
        items = self.ui.listWidgetDiagnosis.selectedItems()
        buf = list()
        for i in items:
            buf.append(i.text())

        self.ui.listWidgetSelected.clear()
        self.ui.listWidgetSelected.addItems(buf)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
