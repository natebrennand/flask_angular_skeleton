
#Flask AngularJS Skeleton

##Set up

This assumes that you have Python and Node.js installed.

####Python

    pip install virtualenv
    virtualenv --no-site-packages .
    source bin/activate
    pip install -r requirements.txtt

####Grunt

    npm install -g grunt grunt-cli
    npm install
    grunt

##Dev

####Frontend

Run `grunt watch` and grunt will recompile the `.js` and `.scss` files when changes are detected.

####Backend

Keep the flask python server running. When changes are detected in the `.py` files it will restart the server.
The server is easily runnable with `run.sh`.

