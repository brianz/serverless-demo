#!/bin/bash

if [[ ! -d lib ]]; then
    mkdir lib
fi

pip install -t lib -r requirements.txt
