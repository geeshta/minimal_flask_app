from flask import Flask
from app.config import cfg

instance = Flask(__name__)
instance.config.update(cfg)

from app import views
