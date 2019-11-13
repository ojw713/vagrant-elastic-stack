#!/bin/bash

# Run all playbooks at once, but stop as soon as one of them is failing
cd /elastic-stack/ || exit
ansible-playbook 1_configure-elasticsearch.yml &&\
ansible-playbook 2_configure-kibana.yml &&\
ansible-playbook 3_configure-logstash.yml

