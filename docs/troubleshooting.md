# Troubleshooting

## Tips to give this APB working fine

### Error cannot get rolebindings.rbac.authorization.k8s.io in the namespace

I will assume that you already have this repo cloned:

```
ORIGIN_VERSION=v3.7.1 ./run_latest_build.sh
oc adm policy add-cluster-role-to-user cluster-admin developer
oc login -u developer
oc edit cm/broker-config -n ansible-service-broker
```

Modify the line with the key **sandbox_role** to admin as you see, by default must be on edit:
```
...
...
    openshift:
      host: ""
      ca_file: ""
      bearer_token_file: ""
      image_pull_policy: "IfNotPresent"
      sandbox_role: "admin"
      namespace: "ansible-service-broker"
      keep_namespace: false
      keep_namespace_on_error: true
...
...
```

Then execute a oc rollout:
```
oc rollout latest dc/asb -n ansible-service-broker
```

- Related issue: https://github.com/ansibleplaybookbundle/prometheus-apb/issues/5
