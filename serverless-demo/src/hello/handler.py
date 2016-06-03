from __future__ import print_function

import json
import logging

import os

log = logging.getLogger()
log.setLevel(logging.DEBUG)

def handler(event, context):
    value = os.environ.get('SERVERLESS_STAGE', '')
    magic = os.environ.get('MAGIC_VARIABLE', '')
    return """<html>
    <head></head>
    <body>
        <h1>Hello from Serverless/API Gateway/Lambda</h1>
        <h2>SERVERLESS_STAGE: %s</h2>
        <h2>MAGIC_VARIABLE: %s</h2>
        <h2>Event:</h2>
        <pre>
            %s
        </pre>
        </body>
    </html>""" % (value, magic, json.dumps(event), )
