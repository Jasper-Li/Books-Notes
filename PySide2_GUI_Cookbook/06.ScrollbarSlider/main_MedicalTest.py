import sys
from PySide2.QtWidgets import QApplication, QDialog
from ui_MedicalTest import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)

        self.ui.horizontalScrollBarSugar.valueChanged.connect(self.update_sugar)
        self.ui.horizontalSliderBlood.valueChanged.connect(self.update_blood)
        self.ui.verticalScrollBarHeart.valueChanged.connect(self.update_heart)
        self.ui.verticalSliderCholesteral.valueChanged.connect(self.update_cholesteral)


    def update_sugar(self):
        self.ui.lineEditSugar.setText(str(self.ui.horizontalScrollBarSugar.value()))
    def update_blood(self):
        self.ui.lineEditBlood.setText(str(self.ui.horizontalSliderBlood.value()))
    def update_heart(self):
         self.ui.lineEditHeart.setText(str(self.ui.verticalScrollBarHeart.value()))
    def update_cholesteral(self):
        self.ui.lineEditCholesteral.setText(str(self.ui.verticalSliderCholesteral.value()))

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
