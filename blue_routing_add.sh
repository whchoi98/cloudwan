#!/bin/bash
# command blue_route_table_id.sh
# NRT Blue Public to Blue
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
# NRT Blue Private to Blue
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

# SYD Blue Public to Blue
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_PublicRT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_PublicRT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_PublicRT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_PublicRT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
# SYD Blue Private to Blue 
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region ap-southeast-2 --route-table-id $SYD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

# IAD Blue Public to Blue
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_PublicRT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_PublicRT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_PublicRT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_PublicRT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
# IAD Blue Private to Blue 
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-east-1 --route-table-id $IAD_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

# PDX Blue Public to Blue
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_PublicRT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_PublicRT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_PublicRT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_PublicRT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
# PDX Blue Private to Blue 
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region us-west-2 --route-table-id $PDX_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

# FRA Blue Public to Blue
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_PublicRT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_PublicRT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_PublicRT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_PublicRT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
# FRA Blue Private to Blue 
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-central-1 --route-table-id $FRA_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

# DUB Blue Public to Blue
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_PublicRT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_PublicRT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_PublicRT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_PublicRT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_PublicRT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
# DUB Blue Private to Blue 
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_A_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $NRT_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $SYD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $IAD_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $PDX_VPC_Blue_CIDR --core-network-arn $core_network_arn
aws ec2 create-route --region eu-west-1 --route-table-id $DUB_VPC_Blue_Private_Subnet_B_RT_id --destination-cidr-block $FRA_VPC_Blue_CIDR --core-network-arn $core_network_arn

#delete sample
#aws ec2 delete-route --region ap-northeast-1 --route-table-id $NRT_VPC_Blue_PublicRT_id --destination-cidr-block $DUB_VPC_Blue_CIDR --core-network-arn $core_network_arn

source ~/.bash_profile