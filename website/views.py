from flask import Blueprint, render_template, Flask, request 
import mysql.connector
from mysql.connector import Error

views = Blueprint('views', __name__)


@views.route('/')
def home():
    return  render_template("home.html")


try:
    connection = mysql.connector.connect(host='localhost',
                                         database='elidek',
                                         user='root',)
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)

except Error as e:
    print("Error while connecting to MySQL", e)






    
