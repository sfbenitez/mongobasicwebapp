# -*- coding: utf-8 -*-
from pymongo import MongoClient
from bottle import Bottle,route,run,request,template,static_file,redirect,get,post,default_app,response,get,post

@route('/')
def connect():
    return template('index.tpl')

@post('/consulta')
def consulta():
  username = request.forms.get('username')
  password = request.forms.get('password')

  client = MongoClient('mongodb://'+str(username)+':'+str(password)+'@172.22.200.111:27017/ABD', 27017)
  db = mongoClient.ADB
  coleccion = db.restaurants
  cursor = coleccion.find()
  return template('consula.tpl', cursor = cursor)

@route('/static/<filepath:path>')
def server_static(filepath):
  return static_file(filepath, root='static')

run(host = '0.0.0.0', port = 8080)
