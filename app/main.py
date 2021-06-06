import json
import socket

__author__ = "Vagif Mammadaliyev"


def get_data():
    hostname = socket.gethostname()
    return {
        "hostname": hostname,
        "author": __author__,
    }


def application(env, start_response):
    start_response("200 OK", [("Content-Type", "application/json")])
    return json.dumps(get_data()).encode()
