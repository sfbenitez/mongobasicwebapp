# -*- coding: utf-8 -*-
from pymongo import MongoClient
from bottle import Bottle,route,run,request,template,static_file,redirect,get,post,default_app,response,get,post

@route('/')
def index():
  return template("conexion.tpl")

@route('/login',method='POST')
def login():
  user = request.forms.get('user')
  password = request.forms.get('password')
  database = request.forms.get('database')
  server = request.forms.get('server')
#  user = 'sergio'
#  password = 'usuario'
#  database = 'ABD'
#  server = '172.22.200.111'
  client = MongoClient('mongodb://'+str(user)+':'+str(password)+'@'+str(server)+':27017/'+str(database)+'', 27017)
  base = client.ABD.restaurants
  selector = base.find({},{'name':1}).limit(50)
  count = base.count()
  return template('index.tpl', selector = selector, user = user, count = count)

@post('/consulta',method='POST')
def consulta():
  user = request.forms.get('user')
  password = request.forms.get('password')
  nombre = request.forms.get('nombre')
#  user = 'sergio'
#  password = 'usuario'
#  database = 'ABD'
#  server = '172.22.200.111'
  client = MongoClient('mongodb://'+str(user)+':'+str(password)+'@'+str(server)+':27017/'+str(database)+'', 27017)
  base = client.ABD.restaurants
  datos = base.find({'name':nombre})
  return template('consulta.tpl', datos = datos, nombre = nombre)

@route('/css/<filename:path>')
def send_static(filename):
    return static_file(filename, root='/css/')

run(host = '0.0.0.0', port = 8080)
