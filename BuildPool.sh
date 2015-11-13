#!/bin/bash
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/pool -d '{"name":"PoolRR","lbmethod":"roundrobin"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/vip -d '{"name":"VIP-RR","ip":"10.0.0.20","protocol":"TCP","port":"5550","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM2","ip":"10.0.0.2","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM3","ip":"10.0.0.3","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM4","ip":"10.0.0.4","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM5","ip":"10.0.0.5","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM6","ip":"10.0.0.6","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM7","ip":"10.0.0.7","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM8","ip":"10.0.0.8","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM9","ip":"10.0.0.9","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM10","ip":"10.0.0.10","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM11","ip":"10.0.0.11","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM12","ip":"10.0.0.12","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM13","ip":"10.0.0.13","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM14","ip":"10.0.0.14","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM15","ip":"10.0.0.15","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://192.168.56.103:8080/one/nb/v2/lb/default/create/poolmember -d '{"name":"PM16","ip":"10.0.0.16","poolname":"PoolRR"}' -V
curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X GET http://192.168.56.103:8080/one/nb/v2/lb/default/