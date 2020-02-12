# standard lib
import sys
import os.path
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QMainWindow, QFileDialog

# custom lib
from ui_SampleEditor import Ui_MainWindow

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.actionOpen.triggered.connect(self.open_file)
        self.ui.actionSaveAs.triggered.connect(self.save_as_file)
        self.ui.actionSave.triggered.connect(self.save_file)
        self.filename = None
        self.dirname = os.path.dirname(__file__)
    def open_file(self):
        fname,_ = QFileDialog.getOpenFileName(self, 'open file', self.dirname)
        print('open file: ', fname)
        if fname:
            self.filename = fname
            with open(fname, "r") as f:
                buf = f.read()
                self.ui.textEdit.setText(buf)

    def save_as_file(self):
        if self.filename:
            fname = self.filename
        else:
            fname = self.dirname
        fname,_ = QFileDialog.getSaveFileName(self, 'save as', fname, 'Text files (*.txt)')
        if fname:
            self.save_textEdit_to_file(fname)
        print('finished to save as to: ', fname)

    def save_textEdit_to_file(self, fname):
        buf = self.ui.textEdit.toPlainText()
        with open(fname, "w") as f:
            f.write(buf)

    def save_file(self):
        fname = self.filename
        print('save file to:', fname)
        if fname:
            self.save_textEdit_to_file(fname)
        else:
            fname,_ = QFileDialog.getSaveFileName(self, 'save', self.dirname, 'Text files (*.txt)')
            if fname:
                self.save_textEdit_to_file(fname)
        print('finished to save file to:', fname)





if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
