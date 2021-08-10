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
            # static_folder="./dist",
            # template_folder="./frontend_2.0/dist"

app.register_blueprint(clients_model)
app.register_blueprint(routine_model)
app.register_blueprint(routine_client_model)

# cors = CORS(app)
cors = CORS(app, resources={r"/client/*": {"origins": "*"}})

# @app.route('/', defaults={'path': ''})
# @app.route('/<path:path>')
# def dender_vue(path):
#     return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)
