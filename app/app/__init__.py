from flask import Flask
from settings import Config

instance = Flask(__name__)
instance.config.from_object(Config)

from . import urls
