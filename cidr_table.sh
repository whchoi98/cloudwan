#!/bin/bash
# command blue_route_table_id.sh
export NRT_VPC_Blue_CIDR='10.21.0.0/16'
export SYD_VPC_Blue_CIDR='10.121.0.0/16'
export IAD_VPC_Blue_CIDR='10.31.0.0/16'
export PDX_VPC_Blue_CIDR='10.131.0.0/16'
export FRA_VPC_Blue_CIDR='10.41.0.0/16'
export DUB_VPC_Blue_CIDR='10.141.0.0/16'
echo "export NRT_VPC_Blue_CIDR=${NRT_VPC_Blue_CIDR}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Blue_CIDR=${SYD_VPC_Blue_CIDR}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Blue_CIDR=${IAD_VPC_Blue_CIDR}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Blue_CIDR=${PDX_VPC_Blue_CIDR}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Blue_CIDR=${FRA_VPC_Blue_CIDR}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Blue_CIDR=${DUB_VPC_Blue_CIDR}"| tee -a ~/.bash_profile

export NRT_VPC_Green_CIDR='10.22.0.0/16'
export SYD_VPC_Green_CIDR='10.122.0.0/16'
export IAD_VPC_Green_CIDR='10.32.0.0/16'
export PDX_VPC_Green_CIDR='10.132.0.0/16'
export FRA_VPC_Green_CIDR='10.42.0.0/16'
export DUB_VPC_Green_CIDR='10.142.0.0/16'
echo "export NRT_VPC_Green_CIDR=${NRT_VPC_Green_CIDR}"| tee -a ~/.bash_profile
echo "export SYD_VPC_Green_CIDR=${SYD_VPC_Green_CIDR}"| tee -a ~/.bash_profile
echo "export IAD_VPC_Green_CIDR=${IAD_VPC_Green_CIDR}"| tee -a ~/.bash_profile
echo "export PDX_VPC_Green_CIDR=${PDX_VPC_Green_CIDR}"| tee -a ~/.bash_profile
echo "export FRA_VPC_Green_CIDR=${FRA_VPC_Green_CIDR}"| tee -a ~/.bash_profile
echo "export DUB_VPC_Green_CIDR=${DUB_VPC_Green_CIDR}"| tee -a ~/.bash_profile



source ~/.bash_profile