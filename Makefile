dev:
	ansible-playbook --diff --limit=dev galaxy.yml

dev-deps:
	ansible-playbook --diff --limit=dev galaxy-deps.yml

requirements:
	ansible-galaxy role install -p roles -r requirements.yml
