from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from backend.models.routine_model import RoutineModel

routine_model = Blueprint('routine_model', __name__)

model = RoutineModel()

@routine_model.route('/routine/create_routine', methods=['POST'])
@cross_origin()
def create_routine():
    content = model.create_routine(request.json['title'], request.json['description'], request.json['start'],
                                   request.json['end'], int(request.json['time']), int(request.json['clients']))
    return jsonify(content)

@routine_model.route('/routine/get_routines', methods=['GET'])
@cross_origin()
def get_routines():
    return jsonify(model.get_routines())

@routine_model.route('/routine/get_routine', methods=['POST'])
@cross_origin()
def get_routine():
    return jsonify(model.get_routine(int(request.json['id'])))

@routine_model.route('/routine/delete_routine', methods=['DELETE'])
@cross_origin()
def delete_routine():
    return jsonify(model.delete_routine(int(request.json['id'])))
