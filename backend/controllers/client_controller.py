from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from backend.models.clients_model import ClientsModel

clients_model = Blueprint('clients_model', __name__)

model = ClientsModel()

@clients_model.route('/client/create_client', methods=['POST'])
@cross_origin()
def create_client():
    content = model.create_client(request.json['name'], request.json['email'], int(request.json['routines']))
    return jsonify(content)

@clients_model.route('/client/get_clients', methods=['GET'])
@cross_origin()
def get_clients():
    return jsonify(model.get_clients())

@clients_model.route('/client/get_client', methods=['POST'])
@cross_origin()
def get_client():
    return jsonify(model.get_client(int(request.json['id'])))

@clients_model.route('/client/delete_client', methods=['DELETE'])
@cross_origin()
def delete_client():
    return jsonify(model.delete_client(int(request.json['id'])))
