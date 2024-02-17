#!/usr/bin/python3
"""
script that starts a Flask web application.
"""
from flask import Flask, render_template
from models import storage

app = Flask(__name__)


@app.route('/states_list', strict_slashes=False)
def states_list():
    """function that display all current state in storage"""
    data = storage.all("State").values()
    return render_template('7-states_list.html', data=data)


@app.teardown_appcontext
def teardown_db(self):
    """function that removes the current SQLAlchemy Session"""
    storage.close()


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
