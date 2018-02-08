# Prometheus APB

![img](docs/img/prometheus-logo.png)

## Description

Deploy Prometheus stack into your project of Openshift using APB

- Prometheus Stack
  - registry.access.redhat.com/openshift3/oauth-proxy:v3.7
  - registry.access.redhat.com/openshift3/prometheus:v3.7
  - registry.access.redhat.com/openshift3/prometheus-alert-buffer:v3.7
  - registry.access.redhat.com/openshift3/prometheus-alertmanager:v3.7

## How to try it?

### Requirements

- Fedora APB rpm
```
sudo dnf -y copr enable @ansible-service-broker/ansible-service-broker-latest
yum install apb
```

### Hands on lab

Execute this:

```
mkdir ~/apb && cd ~/apb
wget https://raw.githubusercontent.com/openshift/ansible-service-broker/master/scripts/run_latest_build.sh
chmod 755 run_latest_build.sh
./run_latest_build.sh
oc login -u system:admin
oc adm policy add-cluster-role-to-user cluster-admin developer
oc login -u developer
git clone <repo_url> && cd <repo_folder>
apb prepare
apb push --broker=https://asb-1338-ansible-service-broker.172.17.0.1.nip.io
apb run --project prom-apb-test-01
```

## Elements already done

- Prometheus Server
- Prometheus Alert Manager
- Binding Prometheus <-> AlertManager
- Authentication
- Deprovision
- APB Test

## Working on

- Graphana

## To Do

- AlertBuffer

# References

- [APB Doc Repo](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle)
- [APB Base Repo](https://github.com/ansibleplaybookbundle/apb-base)
- [Prometheus Webpage](https://prometheus.io/)
- [Prometheus Documentation](https://prometheus.io/docs/introduction/overview/)

# Author

- **Freenode**: @jparrill
