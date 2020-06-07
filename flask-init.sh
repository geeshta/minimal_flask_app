#!\usr\bin\bash
mkdir $1 && cd $1
echo "#Settings for your app\nclass Config:\n    SECRET_KEY = b'change-me!'" >> settings.py
echo "#Run on Werkzeug development server\nfrom $1 import instance\n\nif __name__ == '__main__':\n    instance.run(debug=True)" >> run.py
mkdir $1 && cd $1
echo "from flask import Flask\nfrom settings import Config\n\ninstance = Flask(__name__)\ninstance.config.from_object(Config)\n\nfrom . import urls" >> __init__.py
echo "#Register your routes here\nfrom . import instance\nfrom . import views\n\n@instance.route('/')\ndef index():\n    return views.index()" >> urls.py
echo "#Build your views here\nfrom flask import render_template\n\ndef index():\n    return render_template('index.html')" >> views.py
mkdir static
mkdir templates && cd templates
echo "<!DOCTYPE html>\n<html lang=\"en\">\n    <head>\n        <meta charset=\"utf-8\">\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n        <title>Index</title>\n    </head>\n    <body>\n        <h1>Hello, world!</h1>\n    </body>\n</html>" >> index.html
