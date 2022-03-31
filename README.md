# galaxy-psu-playbook
Ansible playbook for Galaxy PSU

# Usage

Install Ansible and dependencies:

```console
$ python3 -m venv ansible
$ . ./ansible/bin/activate
$ pip install -r requirements.txt
```

Install roles:

```console
$ ansible-galaxy role install -r requirements.yml
```

Run the deps (one-time tasks) playbook:

```console
$ ansible-playbook --diff galaxy-deps.yml
```

To update Galaxy and/or its configuration:

```console
$ ansible-playbook --diff galaxy.yml
```
