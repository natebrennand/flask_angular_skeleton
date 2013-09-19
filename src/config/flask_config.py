
from os import environ

# flask settings

if environ.get('FLASK_DEBUG') == 'TRUE':
    debug = True
else:
    debug = False
