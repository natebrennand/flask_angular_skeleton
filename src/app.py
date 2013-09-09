

from flask import Flask, make_response
import simplejson


app = Flask(__name__)
#app.config.from_object('config.flask_config')





@app.route('/', methods=['GET'])
def home():
    return make_response(open('src/static/base.html').read())


if __name__ == '__main__':
    app.run()

