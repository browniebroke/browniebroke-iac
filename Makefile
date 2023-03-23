# Should work with multiple dirs
SUBDIR := github
TF_COMMAND := terraform -chdir=$(SUBDIR)

init:
	$(TF_COMMAND) init

initup:
	$(TF_COMMAND) init -upgrade

migratestate:
	$(TF_COMMAND) init -migrate-state

plan:
	$(TF_COMMAND) plan

apply:
	$(TF_COMMAND) apply -auto-approve -input=false
