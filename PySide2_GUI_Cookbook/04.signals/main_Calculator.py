import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_Calculator import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButtonPlus.clicked.connect(self.ops_plus)
        self.ui.pushButtonSubtract.clicked.connect(self.ops_subtract)
        self.ui.pushButtonMultiply.clicked.connect(self.ops_multiply)
        self.ui.pushButtonDivide.clicked.connect(self.ops_divide)
    
    def get_inputs(self):
        str1 = self.ui.lineEditNum1.text()
        if str1:
            val1 = int(str1)
        else:
            val1 =0
        str2 = self.ui.lineEditNum2.text()
        if str2:
            val2 = int(str2)
        else:
            val2 =0
        return val1, val2
    def ops_plus(self):
        v1, v2 = self.get_inputs()
        self.ui.labelResult.setText('%d + %d = %d'%(v1, v2, v1+v2))
    def ops_subtract(self):
        v1, v2 = self.get_inputs()
        self.ui.labelResult.setText('%d - %d = %d'%(v1, v2, v1-v2))
    def ops_multiply(self):
        v1, v2 = self.get_inputs()
        self.ui.labelResult.setText('%d * %d = %d'%(v1, v2, v1*v2))
    def ops_divide(self):
        v1, v2 = self.get_inputs()
        tmp = v1/v2
        self.ui.labelResult.setText('%d / %d = %.2f'%(v1, v2, tmp))

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
