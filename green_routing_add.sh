#!/bin/bash
# command Green_route_table_id.sh
# NRT Green Public to Green
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
# NRT Green Private to Green
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

# SYD Green Public to Green
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_PublicRT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_PublicRT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_PublicRT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_PublicRT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
# SYD Green Private to Green 
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

# IAD Green Public to Green
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_PublicRT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_PublicRT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_PublicRT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_PublicRT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
# IAD Green Private to Green 
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

# PDX Green Public to Green
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_PublicRT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_PublicRT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_PublicRT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_PublicRT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
# PDX Green Private to Green 
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

# FRA Green Public to Green
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_PublicRT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_PublicRT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_PublicRT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_PublicRT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
# FRA Green Private to Green 
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

# DUB Green Public to Green
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_PublicRT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_PublicRT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_PublicRT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_PublicRT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_PublicRT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
# DUB Green Private to Green 
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Green_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Green_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Green_CIDR --core-network-arn $core_network_arn

#delete sample
#aws ec2 delete-route --region ap-northeast-1 --route-table-id $NRT_VPC_Green_PublicRT_id --destination-cidr-block $DUB_VPC_Green_CIDR --core-network-arn $core_network_arn

source ~/.bash_profile