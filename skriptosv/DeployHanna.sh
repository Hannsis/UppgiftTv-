#!/bin/bash

PublicKey=$(cat ~/.ssh/id_rsa.pub)
templatePath=C:/Users/89hanmad/Desktop/uppgifttvålättare/UppgiftTv-/skriptosv/downloadtemplate.json
RG=hannarg
deployName=DeployScript

az deployment group create  --name $deployName --resource-group $RG --template-file $templatePath --verbose --parameters adminPublicKey="$PublicKey" DotnetInit=@C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/Cloud_Init/Cloud_dotnet7.yaml NginxInit=@C:/Users/00erirun/Documents/CLO22Dev/Jaggörenny/UppgiftTwo/skriptosv/Cloud_Nginx.yaml/