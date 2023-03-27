#!bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=~/Documents/CLO22Dev/InlämningARM/UppgiftTwo/skriptosv/armtemplate.json
RG=blobbenbob
deployName=BastionDeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath --parameters AdminPublicKey="$PublicKey" NginxInit=@./Cloud_Init/Cloud_Nginx.yaml DotnetInit=@./Cloud_Init/Cloud_dotnet7.yaml
sleep 5s