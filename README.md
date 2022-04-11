# galaxy-psu-playbook
Ansible playbook for Galaxy PSU

# Usage

Install Ansible and dependencies:

```console
$ python3 -m venv ansible
$ . ./ansible/bin/activate
$ pip install -r requirements.txt
```

The Galaxy dev and prod hosts are split into two separate inventory files, hosts-dev and hosts-prod.

Install roles:

```console
$ ansible-galaxy role install -r requirements.yml
```

Run the deps (one-time tasks) playbook:

```console
$ ansible-playbook -i hosts-prod --diff galaxy-deps.yml
```

```console
$ ansible-playbook -i hosts-dev --diff galaxy-deps.yml
```

To update Galaxy prod and/or its configuration:

```console
$ ansible-playbook -i hosts-prod --diff galaxy.yml
```

To update Galaxy dev and/or its configuration:

```console
$ ansible-playbook -i hosts-dev --diff galaxy.yml
```
