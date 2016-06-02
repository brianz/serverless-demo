from __future__ import print_function

import json
import logging

import os

log = logging.getLogger()
log.setLevel(logging.DEBUG)

def handler(event, context):
    value = os.environ.get('SERVERLESS_STAGE', '')
    return """<html>
    <head></head>
    <body>
        <h1>Hello from Serverless/API Gateway/Lambda</h1>
        <h2>SERVERLESS_STAGE: %s</h2>
        <h2>Event:</h2>
        <pre>
            %s
        </pre>
        </body>
    </html>""" % (value, json.dumps(event), )
