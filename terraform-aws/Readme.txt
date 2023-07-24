Terraform with aws

Pre-requisties
-> AWS CLI installed
-> AWS IAM user


Install terraform:

For linux:
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

To install AWS CLI:
$sudo apt install awscli


**Go to IAM and create user and copy access key and secret key** 

Then to configure it will console:
$aws configure
    Enter Access key and Secret Key

Now configure same for Terraform itself
$export AWS_ACCESS_KEY_ID=_________________
$export AWS_SECRET_ACCESS_KEY=_________________

Start writing code:
$vim main.tf



**Other basic commands used**
$terraform init
$terraform validate
$terraform plan
$terraform apply
$terraform destroy