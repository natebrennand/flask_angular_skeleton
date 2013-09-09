
# file used to consolidate various error messages

import simplejson


def ERROR():
    return response()


def NO_DATA():
    return response(
        message = 'No data was found',
        code = 400
    )


########################################
#   Utilities
########################################

def response(message="Server side error", code=500):
    code = int(code)
    return simplejson({
        'message': message
    }), code
