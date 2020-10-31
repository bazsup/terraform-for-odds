# terraform for odds

## Get Started
1. For init terraform in your project
```sh
terraform init
```
It will download provider in .terraform directory.

2. For checking terraform script using
```sh
terraform plan
```

3. Create plan to `tfplan` file
```
terraform plan -out tfplan
```

4. Applying plan using
```sh
terraform apply tfplan
```

5. Terminate instance using
```sh
terraform destroy
```

**note:** it will throw error when aws credential not configure

## With AWS Provider

### profile
aws configure --profile <profile-name>
in provider we can set profile 
```tf
provider "aws" {
  profile = "<profile-name>"
}
```

### Variable

**command line**
terraform plan -out tfplan -var "profile=<profile-name>"

**var file (default)**
create terraform.tfvars (use this name as default)

**var file**
create main.tfvars and using this command
```sh
terraform plan -out tfplan -var-file=main.tfvars
```
