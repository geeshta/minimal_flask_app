from flask import render_template, request
from app import instance

@instance.route("/")
@instance.route("/index")
def index():
    name = request.args["name"] if "name" in request.args else "stranger"
    return render_template("index.html", name=name)
