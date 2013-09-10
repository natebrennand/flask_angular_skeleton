

from flask import Flask, make_response, request
import simplejson

from controllers import letters


app = Flask(__name__)
app.config.from_object('config.flask_config')


@app.route('/test', methods=['POST'])
def test():
    return letters.process(data=simplejson.dumps(request.data))


@app.route('/', methods=['GET'])
def home():
    return make_response(open('src/static/base.html').read())


if __name__ == '__main__':
    app.run()

