### Monitoring stack inside kubernetes for logs

#### Components:
* elasticsearch
* logstash
* kibana


#### Elasticsearch
###### start pods for elasticsearch (one node)
```
$ kubectl apply -f elasticsearch/elasticsearch-deployment.yaml
```

###### start service for elasticsearch
```
$ kubectl apply -f elasticsearch/elasticsearch-service.yaml
```
#### Logstash
###### start pods for logstash (one node)
```
$ kubectl apply -f logstash/logstash-deployment.yaml
```

###### start service for logstash
```
$ kubectl apply -f logstash/logstash-service.yaml
```

#### Kibana
###### start pods for kibana (one node)
```
$ kubectl apply -f kibana/kibana-deployment.yaml
```

###### start service for kibana
```
$ kubectl apply -f kibana/kibana-service.yaml
```

###### access kibana from localhost
```
$ kubectl proxy
```

**Hit in browser:**
[kibana](http://loalhost/api/v1/namespaces/default/services/kibana/proxy)
```
http://loalhost/api/v1/namespaces/default/services/kibana/proxy
```
