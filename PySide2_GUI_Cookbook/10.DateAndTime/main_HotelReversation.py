# standard lib
import sys
from pdb import set_trace
import collections

# 3rdparty lib
from PySide2.QtWidgets import QApplication, QDialog

# custom lib
from ui_HotelReservation import Ui_Dialog

class MainWindow(QDialog):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self)
        self.ui.pushButton.clicked.connect(self.calc_room_rent)
        self.type_rent_dict = collections.OrderedDict([
            ('Suite',40),
            ('Super Luxury',30),
            ('Super Deluxe',20),
            ('Ordinary Room',10),
        ])
        room_types = list(self.type_rent_dict.keys())
        self.ui.comboBox.addItems(room_types)
        #TODO: delete for test
        self.calc_room_rent()
    def calc_room_rent(self):
        start_date = self.ui.calendarWidget.selectedDate().toString('yyyy-MM-dd')
        days = self.ui.spinBox.value()
        room_type = self.ui.comboBox.currentText()
        single_rent = self.type_rent_dict[room_type]
        total_rent = single_rent * days

        entered_info = 'start date: {}, days: {}, room type: {}'.format(start_date, days, room_type)
        rent_info = 'single daty rent: ${}, total rent: ${}'.format(single_rent, total_rent)
        self.ui.labelEnteredInfo.setText(entered_info)
        self.ui.labelRentInfo.setText(rent_info)

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
