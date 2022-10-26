
#!/bin/bash
# command ./cloudwan_vpc.sh

cd ~/environment/cloudwan/
aws cloudformation deploy \
  --region ap-northeast-2 \
  --stack-name "ICN-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/ICN-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region ap-northeast-2 \
  --stack-name "ICN-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/ICN-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region ap-northeast-1 \
  --stack-name "NRT-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/NRT-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region ap-northeast-1 \
  --stack-name "NRT-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/NRT-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region ap-southeast-2 \
  --stack-name "SYD-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/SYD-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region ap-southeast-2 \
  --stack-name "SYD-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/SYD-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region us-east-1\
  --stack-name "IAD-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/IAD-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \ 
aws cloudformation deploy \
  --region us-east-1 \
  --stack-name "IAD-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/IAD-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region us-west-2\
  --stack-name "PDX-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/PDX-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region us-west-2 \
  --stack-name "PDX-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/PDX-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region eu-central-1\
  --stack-name "FRA-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/FRA-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM &
aws cloudformation deploy \
  --region eu-central-1\
  --stack-name "FRA-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/FRA-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region eu-west-1\
  --stack-name "DUB-VPC-Blue" \
  --template-file "/home/ec2-user/environment/cloudwan/DUB-VPC-Blue.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM & \
aws cloudformation deploy \
  --region eu-west-1\
  --stack-name "DUB-VPC-Green" \
  --template-file "/home/ec2-user/environment/cloudwan/DUB-VPC-Green.yml" \
  --parameter-overrides "KeyPair=$KeyName" \
  --capabilities CAPABILITY_NAMED_IAM
  