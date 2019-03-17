import sys
from PyQt5 import QtCore, QtGui, QtWidgets,QtSql
import add_student
class MainWindow(QWindow,add_student.Ui_MainWindow):
    def initializeModel(self,model):
        self.model=model
        self.model.setTable('stud_info')
        self.model.setEditStrategy(QtSql.QSqlTableModel.OnFieldChange)
        self.model.select()
        self.model.setHeaderData(0, QtCore.Qt.Horizontal, "s_id")
        self.model.setHeaderData(1, QtCore.Qt.Horizontal, "name")
        self.model.setHeaderData(2, QtCore.Qt.Horizontal, "contact")
        self.model.setHeaderData(3, QtCore.Qt.Horizontal, "email")
        self.model.setHeaderData(4, QtCore.Qt.Horizontal, "city")
        self.model.setHeaderData(5, QtCore.Qt.Horizontal, "b_no")
        self.model.setHeaderData(6, QtCore.Qt.Horizontal, "r_no")
        self.model.setHeaderData(7, QtCore.Qt.Horizontal, "date_of_join")
        self.model.setHeaderData(8, QtCore.Qt.Horizontal, "fees_status")
       
       
    	
    def createView(title, model):
       view = QtGui.QTableView()
       view.setModel( self.model)
       view.setWindowTitle(title)
       return view
    	
    def addrow():
       print( self.model.rowCount())
       ret =  self.model.insertRows( self.model.rowCount(), 1)
       print(ret)
    	
    def findrow(i):
       delrow=i.row()
    	
    if __name__ == '__main__':
    
       app = QtGui.QApplication(sys.argv)
       db = QtSql.QSqlDatabase.addDatabase('QSQLITE')
       db.setDatabaseName('hostel_info.db')
       self.model = QtSql.QSqlTableModel()
       delrow=-1
       initializeModel( self.model)
    	
       view1 = createView("Table Model (View 1)",  self.model)
       view1.clicked.connect(findrow)
    	
       dlg = QtGui.QDialog()
       layout = QtGui.QVBoxLayout()
       layout.addWidget(view1)
    	
       button = QtGui.QPushButton("Add a row")
       button.clicked.connect(addrow)
       layout.addWidget(button)
    	
       btn1 = QtGui.QPushButton("del a row")
       btn1.clicked.connect(lambda:self.model.removeRow(view1.currentIndex().row()))
       layout.addWidget(btn1)
    	
       dlg.setLayout(layout)
       dlg.setWindowTitle("Database Demo")
       dlg.show()
       sys.exit(app.exec_())
    
