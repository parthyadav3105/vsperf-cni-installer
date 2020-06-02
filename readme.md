# Automating K8s object provisioning 

Methods to use:

1. Using playbooks
2. Using docker



### Using playbooks

##### Prerequisite:

* Python (>=3 preferred)
* Ansible-playbook (>=2.9 preferred)
* pip install openshift



Default run:

```$ ansible-playbook main.yml```

Overriding any config

```$ ansible-playbook main.yml -e action=deprovision```

or simply edit config.yml



### Using Docker

##### Prerequisite:

* Docker



Default run:

```$ docker container run parthyadav/cni-installer```

Overriding any config 

```$ docker container run parthyadav/cni-installer -e action=deprovision```

or simply mount new 'config.yml'

```$ docker container run -v $(pwd)/config.yml:/playbooks/config.yml parthyadav/cni-installer```





Overriding hosts file

```$ docker container run parthyadav/cni-installer -i newHostsFile```

or simply mount new 'hosts' file

```$ docker container run -v $(pwd)/hosts:/playbooks/hosts parthyadav/cni-installer```

