from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from backend.models.clients_routines_models import ClientsRoutineModel

routine_client_model = Blueprint('client_routine_model', __name__)

model = ClientsRoutineModel()

@routine_client_model.route('/routine_client/create_client_routine', methods=['POST'])
@cross_origin()
def create_client():
    content = model.create_client_routine(int(request.json['routineID']), int(request.json['clientID']))
    return jsonify(content)

@routine_client_model.route('/routine_client/get_clients_routines', methods=['GET'])
@cross_origin()
def get_clients():
    return jsonify(model.get_client_routine())

@routine_client_model.route('/routine_client/delete_client_routine', methods=['DELETE'])
@cross_origin()
def delete_client():
    return jsonify(model.delete_client_routine(int(request.json['routineID']), int(request.json['clientID'])))
