# -*- coding: utf-8 -*-
from pymongo import MongoClient
from bottle import Bottle,route,run,request,template,static_file,redirect,get,post,default_app,response,get,post

@route('/')
def index():
  return template("conexion.tpl")

@route('/login',method='POST')
def login():
# Request variables
  user = request.forms.get('user')
  password = request.forms.get('password')
  database = request.forms.get('database')
  server = request.forms.get('server')

# Connection DATA
# Working but not the best way i think, still learning
  try:
    conn = request.get_cookie('conn')
    client = MongoClient(conn)
  except:
    conn = 'mongodb://'+str(user)+':'+str(password)+'@'+str(server)+':27017/'+str(database)+''
    client = MongoClient(conn)
    # Saving connection
    response.set_cookie('conn',conn)

# Select collection restaurants
  base = client.ABD.restaurants
# Find names for first 50 documents
  selector = base.find({},{'name':1}).limit(50)
# Count all documents
  count = base.count()
  return template('index.tpl', count = count, selector = selector, user = user, password = password, database = database, server = server)

@post('/consulta',method='POST')
def consulta():
# Request variables
  nombre = request.forms.get('nombre')

# Connection DATA
  conn = request.get_cookie('conn')
  client = MongoClient(conn)
  base = client.ABD.restaurants
# Find the restaurant with the nombre variable
  datos = base.find({'name':nombre})
  return template('consulta.tpl', datos = datos, nombre = nombre)

# Static files
@route('/style/<filename>')
def server_static(filename):
    return static_file(filename, root='./style/')

run(host = '0.0.0.0', port = 8080)
