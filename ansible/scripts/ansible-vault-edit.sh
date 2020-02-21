#!/usr/bin/env bash

# default values
extension="yml"
vault_id="dcms"
vaultfilename="../vault/vault.yml"

read -p "Enter vault file name [${vaultfilename}]: " vaultfilename_input
vaultfilename="${vaultfilename_input:-${vaultfilename}}"
vaultfilename_file="${vaultfilename}.${extension}"
if [ ! -f "${vaultfilename_file}" ] ;
then
  echo "Vault file ${vaultfilename_file} not found"
  exit
fi

ansible-vault edit --vault-id ${vault_id}@prompt ${vaultfilename_file}
