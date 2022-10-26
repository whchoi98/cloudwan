#!/bin/bash
# command ./corenetwork_attach_yaml.sh

cd ~/environment/cloudwan/
## Cloudwan attachment - IAD,ICN,NRT,SYD,FRA,DUB,PDX
aws cloudformation deploy \
  --region us-east-1 \
  --stack-name "IADVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/IAD_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "IADVPCBlueID=$IAD_VPC_Blue_Id" "IADVPCGreenID=$IAD_VPC_Green_Id" "IADVPCBlueCloudWANSubnetAARN=$IAD_VPC_Blue_CloudWANSubnetA_ARN" "IADVPCBlueCloudWANSubnetBARN=$IAD_VPC_Blue_CloudWANSubnetB_ARN" "IADVPCGreenCloudWANSubnetAARN=$IAD_VPC_Green_CloudWANSubnetA_ARN" "IADVPCGreenCloudWANSubnetBARN=$IAD_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region ap-northeast-2 \
  --stack-name "ICNVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/ICN_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "ICNVPCBlueID=$ICN_VPC_Blue_Id" "ICNVPCGreenID=$ICN_VPC_Green_Id" "ICNVPCBlueCloudWANSubnetAARN=$ICN_VPC_Blue_CloudWANSubnetA_ARN" "ICNVPCBlueCloudWANSubnetBARN=$ICN_VPC_Blue_CloudWANSubnetB_ARN" "ICNVPCGreenCloudWANSubnetAARN=$ICN_VPC_Green_CloudWANSubnetA_ARN" "ICNVPCGreenCloudWANSubnetBARN=$ICN_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region ap-northeast-1 \
  --stack-name "NRTVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/NRT_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "NRTVPCBlueID=$NRT_VPC_Blue_Id" "NRTVPCGreenID=$NRT_VPC_Green_Id" "NRTVPCBlueCloudWANSubnetAARN=$NRT_VPC_Blue_CloudWANSubnetA_ARN" "NRTVPCBlueCloudWANSubnetBARN=$NRT_VPC_Blue_CloudWANSubnetB_ARN" "NRTVPCGreenCloudWANSubnetAARN=$NRT_VPC_Green_CloudWANSubnetA_ARN" "NRTVPCGreenCloudWANSubnetBARN=$NRT_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region ap-southeast-2 \
  --stack-name "SYDVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/SYD_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "SYDVPCBlueID=$SYD_VPC_Blue_Id" "SYDVPCGreenID=$SYD_VPC_Green_Id" "SYDVPCBlueCloudWANSubnetAARN=$SYD_VPC_Blue_CloudWANSubnetA_ARN" "SYDVPCBlueCloudWANSubnetBARN=$SYD_VPC_Blue_CloudWANSubnetB_ARN" "SYDVPCGreenCloudWANSubnetAARN=$SYD_VPC_Green_CloudWANSubnetA_ARN" "SYDVPCGreenCloudWANSubnetBARN=$SYD_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region eu-central-1 \
  --stack-name "FRAVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/FRA_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "FRAVPCBlueID=$FRA_VPC_Blue_Id" "FRAVPCGreenID=$FRA_VPC_Green_Id" "FRAVPCBlueCloudWANSubnetAARN=$FRA_VPC_Blue_CloudWANSubnetA_ARN" "FRAVPCBlueCloudWANSubnetBARN=$FRA_VPC_Blue_CloudWANSubnetB_ARN" "FRAVPCGreenCloudWANSubnetAARN=$FRA_VPC_Green_CloudWANSubnetA_ARN" "FRAVPCGreenCloudWANSubnetBARN=$FRA_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region eu-west-1 \
  --stack-name "DUBVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/DUB_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "DUBVPCBlueID=$DUB_VPC_Blue_Id" "DUBVPCGreenID=$DUB_VPC_Green_Id" "DUBVPCBlueCloudWANSubnetAARN=$DUB_VPC_Blue_CloudWANSubnetA_ARN" "DUBVPCBlueCloudWANSubnetBARN=$DUB_VPC_Blue_CloudWANSubnetB_ARN" "DUBVPCGreenCloudWANSubnetAARN=$DUB_VPC_Green_CloudWANSubnetA_ARN" "DUBVPCGreenCloudWANSubnetBARN=$DUB_VPC_Green_CloudWANSubnetB_ARN" & \
aws cloudformation deploy \
  --region us-west-2 \
  --stack-name "PDXVPC-Attachment" \
  --template-file "/home/ec2-user/environment/cloudwan/PDX_Attachment.yaml" \
  --parameter-overrides "CorenetworkID=$corenetwork_id" "PDXVPCBlueID=$PDX_VPC_Blue_Id" "PDXVPCGreenID=$PDX_VPC_Green_Id" "PDXVPCBlueCloudWANSubnetAARN=$PDX_VPC_Blue_CloudWANSubnetA_ARN" "PDXVPCBlueCloudWANSubnetBARN=$PDX_VPC_Blue_CloudWANSubnetB_ARN" "PDXVPCGreenCloudWANSubnetAARN=$PDX_VPC_Green_CloudWANSubnetA_ARN" "PDXVPCGreenCloudWANSubnetBARN=$PDX_VPC_Green_CloudWANSubnetB_ARN"
