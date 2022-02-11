#!/bin/bash

while IFS=: read -r name surname account department enabled password change mail shell uo group
do
        samba-tool user create $account $password --given-name=$name --surname=$surname --must-change-at-next-login --userou="$uo" --mail=$mail --home-directory=/home/$account --login-shell=$shell --department=$department

        samba-tool group addmembers $group $account

done <  $1



