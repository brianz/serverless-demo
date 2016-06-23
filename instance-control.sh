#!/bin/bash

INSTANCE_ID="i-9ba56834"

aws=/Users/brianz/.virtualenvs/aws/bin/aws

if [[ $1 == "start" ]]; then
    $aws ec2 start-instances --instance-ids $INSTANCE_ID
elif [[ $1 == "stop" ]]; then
    $aws ec2 stop-instances --instance-ids $INSTANCE_ID
else
    $aws ec2 describe-instance-status --instance-ids $INSTANCE_ID
fi
