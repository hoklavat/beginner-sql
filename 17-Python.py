# 17-Python

import psycopg2 as pg2
# pip install psycopg2

conn = pg2.connect(database='dvdrental', user='postgres', password='123456') #establish connection to database.

cur = conn.cursor() #get cursor object from database which provides access to data.

cur.execute('SELECT * FROM payment') #execute sql commmand.

cur.fetchone() #select first row from previous query in tuple format. fetchone, fetchall, fetchmany.

data = cur.fetchmany(10) #select first 10 rows.

data[0][4] #fourth column of first-row.

conn.close() #close connection to database.