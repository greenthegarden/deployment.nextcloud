#!/usr/bin/env bash

read -p "Enter variable to encrypt: " var

ansible-vault encrypt_string ${var} --ask-vault-pass
