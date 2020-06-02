FROM python:3.6.10-slim-buster

ENV ANSIBLE_VERSION 2.9.6

RUN apt update -y && apt install sshpass -y

RUN pip install ansible==${ANSIBLE_VERSION}

RUN pip install openshift

WORKDIR /playbooks

ADD ./roles /playbooks/roles
ADD ansible.cfg .
ADD config.yml .
ADD hosts .
ADD main.yml .

ENTRYPOINT ["ansible-playbook", "main.yml"]

