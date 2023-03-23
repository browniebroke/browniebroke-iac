SUBDIR := bootstrap/aws
TF_COMMAND := terraform -chdir=$(SUBDIR)

migratestate:
	$(TF_COMMAND) init -migrate-state

initup:
	$(TF_COMMAND) init --upgrade

plan:
	$(TF_COMMAND) plan

apply:
	$(TF_COMMAND) apply -auto-approve -input=false
