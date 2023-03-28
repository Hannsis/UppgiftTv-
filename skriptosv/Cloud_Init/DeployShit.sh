#!bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=c:/Users/89hanmad/Desktop/uppgifttvålättare/UppgiftTv-/skriptosv/downloadtemplate.json
RG=hannarg2
deployName=DeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath  
sleep 5s