#Register your routes here
from . import instance
from . import views

@instance.route('/')
def index():
    return views.index()
