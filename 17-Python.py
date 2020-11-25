#!/usr/bin/env python
# coding: utf-8

# In[1]:


import psycopg2 as pg2


# In[2]:


conn = pg2.connect(database='dvdrental', user='postgres', password='123456') #establish connection to database.


# In[3]:


cur = conn.cursor() #get cursor object from database which provides access to data.


# In[4]:


cur.execute('SELECT * FROM payment') #execute sql commmand.


# In[5]:


cur.fetchone() #select first row from previous query in tuple format. fetchone, fetchall, fetchmany.


# In[6]:


data = cur.fetchmany(10) #select first 10 rows.


# In[7]:


data[0][4] #fourth column of first-row.


# In[8]:


conn.close() #close connection to database.

