# Elastic Stack in a Box

This is a fork of xeraa's [vagrant-elastic-stack](https://github.com/xeraa/vagrant-elastic-stack) without the x-pack trial and Beats setups.

This repository will install the [Elastic Stack](https://www.elastic.co/products) (Elasticsearch, Logstash, and Kibana)


## Vagrant and Ansible

Do a simple `vagrant up` by using [Vagrant](https://www.vagrantup.com)'s [Ansible provisioner](https://www.vagrantup.com/docs/provisioning/ansible.html). All you need is a working [Vagrant installation](https://www.vagrantup.com/docs/installation/) (2.2.4+ but the latest version is always recommended), a [provider](https://www.vagrantup.com/docs/providers/) (tested with the latest [VirtualBox](https://www.virtualbox.org) version), and 3GB of RAM.

With the [Ansible playbooks](https://docs.ansible.com/ansible/playbooks.html) in the */elastic-stack/* folder you can configure the whole system step by step. Just run them in the given order inside the Vagrant box:

```sh
> vagrant ssh
$ cd /elastic-stack/
$ ansible-playbook 1_configure-elasticsearch.yml
$ ansible-playbook 2_configure-kibana.yml
$ ansible-playbook 3_configure-logstash.yml
```

Or if you are in a hurry, run all playbooks with `$ /elastic-stack/all.sh` at once.


## Kibana

Access Kibana at [http://127.0.0.1:5601](http://127.0.0.1:5601).

## Logstash
Port forwarding for Logstash at [http://127.0.0.1:9600](http://127.0.0.1:9600)
