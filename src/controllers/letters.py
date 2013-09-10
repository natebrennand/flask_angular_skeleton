
import simplejson

from sys import path
path.append('../')
from config import errors as ERR
path.append('controllers/')


def process(data=None):
    if data is None:
        return ERR.NO_DATA
    
    return simplejson.dumps({
        'letters': data['letters'].lower()    
    }), 200

