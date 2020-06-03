# Automating K8s object provisioning 

Methods to use:

1. Using playbooks
2. Using docker

<br>

##### Prerequisite on target hosts:

* Python 3.6
* Should be K8s master (cluster api) running an active cluster

<br>

### Using playbooks

Default run:

​	```$ ansible-playbook main.yml```

Overriding any config

​	```$ ansible-playbook main.yml -e action=deprovision```

or simply edit config.yml

<br>

### Using Docker

Default run:

​	```$ docker container run parthyadav/cni-installer```

Overriding any config 

​	```$ docker container run parthyadav/cni-installer -e action=deprovision```

or simply mount new 'config.yml'

```$ docker container run -v $(pwd)/config.yml:/playbooks/config.yml parthyadav/cni-installer```







