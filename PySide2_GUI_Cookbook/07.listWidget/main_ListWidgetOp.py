import sys
from pdb import set_trace
from PySide2.QtWidgets import QApplication, QDialog, QInputDialog
from ui_ListWidgetOp import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)

        self.ui.pushButtonAdd.clicked.connect(self.add_item)
        self.ui.pushButtonEdit.clicked.connect(self.edit_item)
        self.ui.pushButtonDelete.clicked.connect(self.del_item)
    def add_item(self):
        self.ui.listWidgetSelectedItems.addItem(self.ui.lineEditFood.text())

        self.ui.lineEditFood.clear()
        self.ui.lineEditFood.setFocus()
    def edit_item(self):
        current = self.ui.listWidgetSelectedItems.currentItem()
        text, ok = QInputDialog().getText(self, 'Enter new text',
                'Enter new text')
        if text and ok:
            current.setText(text)
    def del_item(self):
        row = self.ui.listWidgetSelectedItems.currentRow()
        self.ui.listWidgetSelectedItems.takeItem(row)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
