#!/bin/bash
# command Green_route_table_id.sh
export NRT_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Green-PublicRT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Green-PublicRT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Green-PublicRT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Green-PublicRT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Green-PublicRT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Green_PublicRT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Green-PublicRT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

export NRT_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Green-Private-Subnet-A-RT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Green-Private-Subnet-A-RT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Green-Private-Subnet-A-RT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Green-Private-Subnet-A-RT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Green-Private-Subnet-A-RT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Green_Private_Subnet_A_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Green-Private-Subnet-A-RT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

export NRT_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=NRT-VPC-Green-Private-Subnet-B-RT' --region ap-northeast-1 | jq -r '.RouteTables[].RouteTableId')
export SYD_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=SYD-VPC-Green-Private-Subnet-B-RT' --region ap-southeast-2 | jq -r '.RouteTables[].RouteTableId')
export IAD_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=IAD-VPC-Green-Private-Subnet-B-RT' --region us-east-1 | jq -r '.RouteTables[].RouteTableId')
export PDX_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=PDX-VPC-Green-Private-Subnet-B-RT' --region us-west-2 | jq -r '.RouteTables[].RouteTableId')
export FRA_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=FRA-VPC-Green-Private-Subnet-B-RT' --region eu-central-1 | jq -r '.RouteTables[].RouteTableId')
export DUB_VPC_Green_Private_Subnet_B_RT_id=$(aws ec2 describe-route-tables --filters 'Name=tag:Name,Values=DUB-VPC-Green-Private-Subnet-B-RT' --region eu-west-1 | jq -r '.RouteTables[].RouteTableId')

echo "export NRT_VPC_Green_PublicRT_id=${NRT_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Green_PublicRT_id=${SYD_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Green_PublicRT_id=${IAD_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Green_PublicRT_id=${PDX_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Green_PublicRT_id=${FRA_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Green_PublicRT_id=${DUB_VPC_Green_PublicRT_id}"| tee -a ~/.bash_profile

echo "export NRT_VPC_Green_PublicRT_id=${NRT_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Green_PublicRT_id=${SYD_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Green_PublicRT_id=${IAD_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Green_PublicRT_id=${PDX_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Green_PublicRT_id=${FRA_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Green_PublicRT_id=${DUB_VPC_Green_Private_Subnet_A_RT_id}"| tee -a ~/.bash_profile

echo "export NRT_VPC_Green_PublicRT_id=${NRT_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Green_PublicRT_id=${SYD_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Green_PublicRT_id=${IAD_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Green_PublicRT_id=${PDX_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Green_PublicRT_id=${FRA_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Green_PublicRT_id=${DUB_VPC_Green_Private_Subnet_B_RT_id}"| tee -a ~/.bash_profile

source ~/.bash_profile