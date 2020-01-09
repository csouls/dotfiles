#!/bin/bash

AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2 aws sts get-caller-identity
if [ $? -eq 0 ]; then
  AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2 aws iam list-access-keys
  AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2 aws iam list-account-aliases
fi
