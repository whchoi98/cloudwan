#!/bin/bash
aws ec2 describe-instances --filters 'Name=tag:Name,Values=NRT-VPC-Blue-Public-10.21.11.101' 'Name=instance-state-name,Values=running' --region ap-northeast-1 | jq -r '.Reservations[].Instances[].InstanceId'
export NRT_VPC_Blue_Public_10_21_11_101_id=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=NRT-VPC-Blue-Public-10.21.11.101' 'Name=instance-state-name,Values=running' --region ap-northeast-1 | jq -r '.Reservations[].Instances[].InstanceId')
echo "export NRT_VPC_Blue_Public_10_21_11_101_id=${NRT_VPC_Blue_Public_10_21_11_101_id}"| tee -a ~/.bash_profile


export 