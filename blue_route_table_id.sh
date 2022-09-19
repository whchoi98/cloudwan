#!/bin/bash
# command blue_route_table_id.sh
export NRT_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Blue-PublicRT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Blue-PublicRT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Blue-PublicRT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Blue-PublicRT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Blue-PublicRT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Blue_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Blue-PublicRT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

export NRT_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Blue-Private-Subnet-A-RT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Blue-Private-Subnet-A-RT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Blue-Private-Subnet-A-RT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Blue-Private-Subnet-A-RT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Blue-Private-Subnet-A-RT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Blue_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Blue-Private-Subnet-A-RT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

export NRT_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Blue-Private-Subnet-B-RT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Blue-Private-Subnet-B-RT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Blue-Private-Subnet-B-RT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Blue-Private-Subnet-B-RT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Blue-Private-Subnet-B-RT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Blue_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Blue-Private-Subnet-B-RT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

echo "export NRT_VPC_Blue_PublicRT_id=${NRT_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Blue_PublicRT_id=${SYD_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Blue_PublicRT_id=${IAD_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Blue_PublicRT_id=${PDX_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Blue_PublicRT_id=${FRA_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Blue_PublicRT_id=${DUB_VPC_Blue_PublicRT_id}"| tee -a ~/.bash_profile

echo "export NRT_VPC_Blue_PublicRT_id=${NRT_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Blue_PublicRT_id=${SYD_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Blue_PublicRT_id=${IAD_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Blue_PublicRT_id=${PDX_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Blue_PublicRT_id=${FRA_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Blue_PublicRT_id=${DUB_VPC_Blue_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile

echo "export NRT_VPC_Blue_PublicRT_id=${NRT_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Blue_PublicRT_id=${SYD_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Blue_PublicRT_id=${IAD_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Blue_PublicRT_id=${PDX_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Blue_PublicRT_id=${FRA_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Blue_PublicRT_id=${DUB_VPC_Blue_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile

source ~/.bash_profile