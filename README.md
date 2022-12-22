# galaxy-psu-playbook
Ansible playbook for Galaxy PSU

# Usage

Install Ansible and dependencies:

```console
$ python3 -m venv ansible
$ . ./ansible/bin/activate
$ pip install -r requirements.txt
```

The Galaxy-PSU and Galaxy-LRN hosts are split into two separate inventory files, `hosts-psu` and `hosts-lrn`. Inventory for the management of common host services (e.g. Slurm server and nodes) is in `hosts-shared`.

There are `make` targets for all the common operations:

| Target | Purpose |
| --- | --- |
| `requirements` | Install required Ansible roles. |
| `shared` | Run `shared.yml` playbook for configuration of shared hosts/services. |
| `psu-deps` | Run `galaxy-deps.yml` playbook with `hosts-psu` inventory to install/manage Galaxy dependencies. |
| `psu` | Run `galaxy.yml` playbook with `hosts-psu` inventory to install/manage Galaxy itself. |
| `psu-pulsar` | Run `pulsar.yml` playbook with `hosts-psu` inventory to install/manage Pulsar. |
| `lrn-deps` | Run `galaxy-deps.yml` playbook with `hosts-lrn` inventory to install/manage Galaxy dependencies. |
| `lrn` | Run `galaxy.yml` playbook with `hosts-lrn` inventory to install/manage Galaxy itself. |
