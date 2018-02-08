# APB Tests for Prometheus

## How it works

We have X plans on _apb.yml_ then we will tests all of them following the apb test way of work.

- Go to the root path of this repository and execute:
```
$ apb test
```

This action will go through your _playbooks_ folder searching a file called _test.yml_ then will be executed as a playbook but without any variable loaded inside, just the namespace. If you see the logs on the APB pod you will se somithing like this:

```
...
+ ansible-playbook /opt/apb/actions/test.yml --extra-vars '{"namespace": "apb-test-prometheus-apb-055ps"}'
...
```

With this data, our first step will be execute the base role to deploy the kubernetes modules inside of the container and the on the post_tasks all the actions related with our tests.

My point of view here is, load the variables related with a concrete plan that must be tested and the execute a task file called "test_tasks" because the only that changes between executions is just the variables, then we will contain the same tasks for both plans.

This have a extra time to be tested, but I think that worth it. 

## How to add more tests

When you need to create a new plan or maybe an addon, just create the variables that make sense on the plan variables file and the add it on the *test_tasks.yml* and try it ;).


## What more

Hope this could help you to understand how apb test works, and maybe could be useful in the future contributions.

Enjoy.

