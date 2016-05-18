from __future__ import print_function

import json
import logging

log = logging.getLogger()
log.setLevel(logging.DEBUG)

def handler(event, context):
    return """<html>
    <head></head>
    <body>
        <h1>Hello from Serverless/API Gateway/Lambda</h1>
        <h2>Event:</h2>
        <pre>
            %s
        </pre>
        </body>
    </html>""" % (json.dumps(event), )
