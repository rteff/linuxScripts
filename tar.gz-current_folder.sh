#!/usr/bin/env bash

tar -czf "../${PWD##*/}.tar.gz" . && echo -e "\033[32mThe archive was created successfully"
