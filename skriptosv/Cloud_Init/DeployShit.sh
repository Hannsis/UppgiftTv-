#!/bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=~/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/downloadtemplate.json
RG=blobbenbob
deployName=DeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath --verbose --parameters adminPublicKey="$PublicKey" DotnetInit=@C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/Cloud_Init/Cloud_dotnet7.yaml NginxInit=@C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/Cloud_Nginx.yaml/