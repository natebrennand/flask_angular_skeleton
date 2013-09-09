
#Flask AngularJS Skeleton

##Set up

####Python

    virtualenv --no-site-packages .
    source bin/activate
    pip install -r requirements.txtt

####Grunt

    npm install
    grunt

##Dev

####Frontend

Run `grunt watch` and grunt will recompile the `.js` and `.scss` files when changes are detected.

####Backend

Keep the flask python server running. When changes are detected in the `.py` files it will restart the server. The server is easily runnable with `run.sh`.

