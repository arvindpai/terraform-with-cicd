# exit script upon any non-zero exit code
set -o errexit

source ./workflows/script.sh

# show terraform plan file
terraform show tf_plan

# provision GCP resource
terraform apply tf_plan

# remove terraform plan file
rm tf_plan
