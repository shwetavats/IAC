# Infrastructure As Code

## Terraform

**Steps to run the terraform setup locally on your machine** 
1. Clone the repo on your machine 
2. Add AWS creds from command line
3. Create `backend.conf` file under `terraform` directory and add following lines
```
bucket = "<bucket name>"
key    = "<filename>.tfstate"
region = "<region>"
dynamodb_table = "<DynamoDbTableName>"

```
4. Create a Environment directory. One for each env & run init command inside the ENV directory.
```
mkdir beta
cd beta
terraform init -backend-config=../backend.conf
```
