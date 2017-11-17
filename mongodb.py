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
# Must change this###########
#  user = 'sergio'           #
#  password = 'usuario'      #
#  database = 'ABD'	     #
#  server = '172.22.200.111' #
#############################
# Connection
  client = MongoClient('mongodb://'+str(user)+':'+str(password)+'@'+str(server)+':27017/'+str(database)+'', 27017)
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
#  user = request.forms.get('user')
#  password = request.forms.get('password')
  nombre = request.forms.get('nombre')
#  database = request.forms.get('database')
#  server = request.forms.get('server')

# Must change this ##########
  user = 'sergio'           #
  password = 'usuario'      #
  database = 'ABD'	    #
  server = '192.168.1.132'  #
#############################
  client = MongoClient('mongodb://'+str(user)+':'+str(password)+'@'+str(server)+':27017/'+str(database)+'', 27017)
  base = client.ABD.restaurants
# Find the restaurant with the nombre variable
  datos = base.find({'name':nombre})
  return template('consulta.tpl', datos = datos, nombre = nombre)

# Static files
@route('/style/<filename>')
def server_static(filename):
    return static_file(filename, root='./style/')

run(host = '0.0.0.0', port = 8080)
