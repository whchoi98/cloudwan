
#!/bin/bash
# command ./corenetwork_attach.sh
##CoreNetworkID##
aws cloudformation describe-stacks --stack-name CoreNetwork --region us-east-1 | jq -r '.Stacks[].Outputs[].OutputValue' | awk NR==1
export corenetwork_id="$(aws cloudformation describe-stacks --stack-name CoreNetwork --region us-east-1 | jq -r '.Stacks[].Outputs[].OutputValue' | awk NR==1)"
echo "export corenetwork_id=${corenetwork_id}" | tee -a ~/.bash_profile
source ~/.bash_profile
##CoreNetwork ARN##
aws cloudformation describe-stacks --stack-name CoreNetwork --region us-east-1 | jq -r '.Stacks[].Outputs[].OutputValue' | awk NR==2
export corenetwork_arn="$(aws cloudformation describe-stacks --stack-name CoreNetwork --region us-east-1 | jq -r '.Stacks[].Outputs[].OutputValue' | awk NR==2)"
echo "export corenetwork_arnn=${corenetwork_arn}" | tee -a ~/.bash_profile
source ~/.bash_profile

## IAD Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export IAD_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export IAD_VPC_Blue_CloudWANSubnetA_ARN=${IAD_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export IAD_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export IAD_VPC_Blue_CloudWANSubnetB_ARN=${IAD_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export IAD_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export IAD_VPC_Green_CloudWANSubnetA_ARN=${IAD_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export IAD_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=IAD-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export IAD_VPC_Green_CloudWANSubnetB_ARN=${IAD_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## IAD VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=IAD-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export IAD_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=IAD-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export IAD_VPC_Blue_Id=${IAD_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=IAD-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export IAD_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=IAD-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export IAD_VPC_Green_Id=${IAD_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## ICN Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export ICN_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export ICN_VPC_Blue_CloudWANSubnetA_ARN=${ICN_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export ICN_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export ICN_VPC_Blue_CloudWANSubnetB_ARN=${ICN_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export ICN_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export ICN_VPC_Green_CloudWANSubnetA_ARN=${ICN_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export ICN_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=ICN-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export ICN_VPC_Green_CloudWANSubnetB_ARN=${ICN_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## ICN VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=ICN-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export ICN_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=ICN-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export ICN_VPC_Blue_Id=${ICN_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=ICN-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export ICN_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=ICN-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export ICN_VPC_Green_Id=${ICN_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## NRT Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export NRT_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export NRT_VPC_Blue_CloudWANSubnetA_ARN=${NRT_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export NRT_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export NRT_VPC_Blue_CloudWANSubnetB_ARN=${NRT_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export NRT_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export NRT_VPC_Green_CloudWANSubnetA_ARN=${NRT_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export NRT_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=NRT-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export NRT_VPC_Green_CloudWANSubnetB_ARN=${NRT_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## NRT VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=NRT-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export NRT_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=NRT-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export NRT_VPC_Blue_Id=${NRT_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=NRT-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export NRT_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=NRT-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export NRT_VPC_Green_Id=${NRT_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## SYD Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export SYD_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export SYD_VPC_Blue_CloudWANSubnetA_ARN=${SYD_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export SYD_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export SYD_VPC_Blue_CloudWANSubnetB_ARN=${SYD_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export SYD_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export SYD_VPC_Green_CloudWANSubnetA_ARN=${SYD_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export SYD_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=SYD-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export SYD_VPC_Green_CloudWANSubnetB_ARN=${SYD_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## SYD VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=SYD-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export SYD_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=SYD-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export SYD_VPC_Blue_Id=${SYD_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=SYD-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export SYD_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=SYD-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export SYD_VPC_Green_Id=${SYD_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## FRA Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export FRA_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export FRA_VPC_Blue_CloudWANSubnetA_ARN=${FRA_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export FRA_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export FRA_VPC_Blue_CloudWANSubnetB_ARN=${FRA_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export FRA_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export FRA_VPC_Green_CloudWANSubnetA_ARN=${FRA_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export FRA_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=FRA-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export FRA_VPC_Green_CloudWANSubnetB_ARN=${FRA_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## FRA VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=FRA-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export FRA_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=FRA-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export FRA_VPC_Blue_Id=${FRA_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=FRA-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export FRA_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=FRA-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export FRA_VPC_Green_Id=${FRA_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## DUB Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export DUB_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export DUB_VPC_Blue_CloudWANSubnetA_ARN=${DUB_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export DUB_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export DUB_VPC_Blue_CloudWANSubnetB_ARN=${DUB_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export DUB_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export DUB_VPC_Green_CloudWANSubnetA_ARN=${DUB_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export DUB_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=DUB-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export DUB_VPC_Green_CloudWANSubnetB_ARN=${DUB_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## DUB VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=DUB-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export DUB_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=DUB-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export DUB_VPC_Blue_Id=${DUB_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=DUB-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export DUB_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=DUB-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export DUB_VPC_Green_Id=${DUB_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile

## PDX Attach Subnet ARN
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export PDX_VPC_Blue_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Blue-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export PDX_VPC_Blue_CloudWANSubnetA_ARN=${PDX_VPC_Blue_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export PDX_VPC_Blue_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Blue-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export PDX_VPC_Blue_CloudWANSubnetB_ARN=${PDX_VPC_Blue_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export PDX_VPC_Green_CloudWANSubnetA_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Green-CloudWANSubnetA' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export PDX_VPC_Green_CloudWANSubnetA_ARN=${PDX_VPC_Green_CloudWANSubnetA_ARN}" | tee -a ~/.bash_profile
aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn'
export PDX_VPC_Green_CloudWANSubnetB_ARN="$(aws ec2 describe-subnets --filter 'Name=tag:Name,Values=PDX-VPC-Green-CloudWANSubnetB' --region us-east-1 | jq -r '.Subnets[].SubnetArn')"
echo "export PDX_VPC_Green_CloudWANSubnetB_ARN=${PDX_VPC_Green_CloudWANSubnetB_ARN}" | tee -a ~/.bash_profile
source ~/.bash_profile
## PDX VPC ID
aws ec2 describe-vpcs --filters Name=tag:Name,Values=PDX-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId'
export PDX_VPC_Blue_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=PDX-VPC-Blue --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export PDX_VPC_Blue_Id=${PDX_VPC_Blue_Id}" | tee -a ~/.bash_profile
aws ec2 describe-vpcs --filters Name=tag:Name,Values=PDX-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId'
export PDX_VPC_Green_Id="$(aws ec2 describe-vpcs --filters Name=tag:Name,Values=PDX-VPC-Green --region us-east-1 | jq -r '.Vpcs[].VpcId')"
echo "export PDX_VPC_Green_Id=${PDX_VPC_Green_Id}" | tee -a ~/.bash_profile
source ~/.bash_profile