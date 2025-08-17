import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Pass43",
        database = "alx_book_store"    
    )
    
    if mydb.is_connected():
        print ("Database 'alx_book_store' created successfully")
        mycursor = mydb.cursor()
        
        mycursor.close()
        mydb.close()

except Error as err:
    print("Error connecting to database")

