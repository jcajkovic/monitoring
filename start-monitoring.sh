#!/bin/bash


kubectl apply -f elasticsearch/elasticsearch-deployment.yaml
kubectl apply -f elasticsearch/elasticsearch-service.yaml


kubectl apply -f logstash/logstash-deployment.yaml
kubectl apply -f logstash/logstash-service.yaml

kubectl apply -f kibana/kibana-deployment.yaml
kubectl apply -f kibana/kibana-service.yaml
