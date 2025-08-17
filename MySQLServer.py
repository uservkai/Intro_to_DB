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
        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print ("Database 'alx_book_store' created successfully")
                
        mycursor.close()
        mydb.close()

except Error as err:
    print("Error connecting to database")

