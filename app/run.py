#Run on Werkzeug development server
from app import instance

if __name__ == '__main__':
    instance.run(debug=True)
