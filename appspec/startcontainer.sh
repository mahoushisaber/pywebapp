#!/bin/bash
$(aws ecr get-login --no-include-email --region us-west-2)
docker pull 141734513473.dkr.ecr.us-west-2.amazonaws.com/mahoushisaber/pywebapp:latest || {
    echo "ERROR: docker pull failed. Sleeping for 10 minutes to allow investigation..."
    sleep 600
    exit 1
}
docker run --name pywebapp -p 80:8080 --detach 141734513473.dkr.ecr.us-west-2.amazonaws.com/mahoushisaber/pywebapp:latest
 
