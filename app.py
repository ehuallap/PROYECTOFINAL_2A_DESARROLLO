# DEPENDENCIAS
from flask import Flask
from flask_cors import CORS
from flask import request
from flask import jsonify
from flask import render_template

from backend.controllers.client_controller import clients_model
from backend.controllers.routine_controller import routine_model
from backend.controllers.clients_routine_controller import routine_client_model

app = Flask(__name__)

app.register_blueprint(clients_model)
app.register_blueprint(routine_model)
app.register_blueprint(routine_client_model)

cors = CORS(app, resources={r"/client/*": {"origins": "*"}})

if __name__ == "__main__":
    app.run(debug=True)
