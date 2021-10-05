dev:
	ansible-playbook --diff --limit=dev galaxy.yml

requirements:
	ansible-galaxy role install -p roles -r requirements.yml
