#!/bin/bash

samba-tool user list

echo "-------------------------------------------------------------------"

samba-tool group list

echo "-------------------------------------------------------------------"

samba-tool ou list

echo "-------------------------------------------------------------------"

samba-tool computer list

echo "-------------------------------------------------------------------"
