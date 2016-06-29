import json
import logging
import os
import sys

cwd = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(cwd, "../lib"))

import jwt

from jwt.exceptions import DecodeError


log = logging.getLogger()
log.setLevel(logging.INFO)

JWT_SECRET_KEY = os.environ.get('JWT_SECRET_KEY', 'secret')


def jwt_decode_handler(token):
    return jwt.decode(token, JWT_SECRET_KEY)


def handler(event, context):
    token = event.get('token', '').strip()
    if not token:
        raise Exception('Mission token')

    try:
        decoded = jwt_decode_handler(token)
    except DecodeError, e:
        raise Exception(e)

    return decoded
