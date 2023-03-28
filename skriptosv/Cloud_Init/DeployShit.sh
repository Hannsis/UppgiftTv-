#!bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/downloadtemplate.json
RG=blobbenbob
deployName=DeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath --verbose
sleep 5s