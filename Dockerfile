FROM node

ENV SERVERLESS_VERSION 0.5.5

RUN npm install serverless@${SERVERLESS_VERSION} -g

RUN mkdir /root/.aws
COPY credentials config /root/.aws/

ENV PYTHON_PIP_VERSION 8.1.2
RUN curl -SLk 'https://bootstrap.pypa.io/get-pip.py' | python2 \
    && pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION

RUN mkdir /code
WORKDIR /code
