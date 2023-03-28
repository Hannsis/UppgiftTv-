#!bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=C:/Users/89hanmad/Desktop/uppgifttvålättare/UppgiftTv-/skriptosv/downloadtemplate.json
RG=hannarg
deployName=DeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath --verbose  
sleep 5s