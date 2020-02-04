# standard lib
import sys
from pdb import set_trace

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog, QTableWidgetItem

# custom lib
from ui_SingleDayRoomRent import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self, data):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        row = 0
        for room_type, room_rent in data:
            type_item = QTableWidgetItem(room_type)
            rent_item = QTableWidgetItem(str(room_rent))
            print(room_rent, rent_item)
#            set_trace()
            self.ui.tableWidget.setItem(row, 0, type_item)
            self.ui.tableWidget.setItem(row, 1, rent_item)
            row += 1

if __name__ == '__main__':
    app = QApplication([])
    single_rent = [
            ('Suite',40),
            ('Super Luxury',30),
            ('Super Deluxe',20),
            ('Ordinary Room',10),
    ]
    window = MainWindow(single_rent)
    window.show()
    sys.exit(app.exec_())
