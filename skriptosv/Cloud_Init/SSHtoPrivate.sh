#!/bin/bash

RG=blobbenbob
BastionName=bastion
AppServerName=appserver
WebServerName=webserver
BastionIP=$(az vm show --resource-group $RG --name $BastionName --show-details --query publicIps --output tsv)
PrivateAppIP=$(az vm show --resource-group $RG --name $AppServerName --show-details --query privateIps --output tsv)
PrivateWebIP=$(az vm show --resource-group $RG --name $WebServerName --show-details --query privateIps --output tsv)
Key=~/.ssh/id_rsa
Script=C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/Cloud_Init/BastionScript.sh

eval $(ssh-agent -s)
ssh-add $Key
sed -i "3iPrivateAppIP=/$PrivateAppIP/" Script.sh

scp -A $Script azureuser@$BastionIP:Script
echo "Private IP WebServer: $PrivateAppIP"
echo "Private IP AppServer: $PrivateWebIP"
ssh -A azureuser@$BastionIP ''
