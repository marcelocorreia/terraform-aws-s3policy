AWS_PROFILE := one
GITHUB_USER ?= marcelocorreia
GIT_REPO_NAME ?= terraform-aws-vpc

init: _creds fmt
	cd example && terraform init

plan: _creds init
	cd example && terraform plan

apply: _creds fmt
	cd example && terraform apply --auto-approve

destroy: _creds init
	cd example && terraform destroy --auto-approve

state:
	cd example && terraform state list

fmt:
	terraform fmt

_creds:
	$(eval export AWS_PROFILE=$(AWS_PROFILE))


SCAFOLD := badwolf
_readme:
	terraform-docs md . > io.md
	$(SCAFOLD) generate --resource-type readme .


open-page:
	open https://github.com/$(GITHUB_USER)/$(GIT_REPO_NAME).git

_grip:
	grip -b

