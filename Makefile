dev:
	ansible-playbook --diff -i hosts-dev galaxy.yml

dev-deps:
	ansible-playbook --diff -i hosts-dev galaxy-deps.yml

dev-pulsar:
	ansible-playbook --diff -i hosts-dev pulsar.yml

requirements:
	ansible-galaxy role install -p roles -r requirements.yml
