#Build your views here
from flask import render_template

def index():
    return render_template('index.html')
