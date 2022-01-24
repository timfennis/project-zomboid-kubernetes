#!/usr/bin/env bash
set -euo pipefail
SERVER_NAME=${SERVER_NAME:-servertest}

echo "Removing server config"
rm -vrf /server-data/Server/

mkdir -p /server-data/Server
echo "Copying server config from template"
cp -v "/config-template/template.ini" "/server-data/Server/${SERVER_NAME}.ini"
cp -v "/config-template/template_SandboxVars.lua" "/server-data/Server/${SERVER_NAME}_SandboxVars.lua"
cp -v "/config-template/template_spawnregions.lua" "/server-data/Server/${SERVER_NAME}_spawnregions.lua"
