tf-plan:
	terraform plan -out tfplan

tf-apply:
	terraform apply "tfplan"