#!/bin/bash

samba-tool ou delete 'OU=Alergologia-equipos,OU=Alergologia'
samba-tool ou delete 'OU=Enfermeria-equipos,OU=Enfermeria'
samba-tool ou delete 'OU=Informatica-equipos,OU=Informatica'
samba-tool ou delete 'OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa'

samba-tool ou delete 'OU=Alergologia'
samba-tool ou delete 'OU=Enfermeria'
samba-tool ou delete 'OU=Informatica'
samba-tool ou delete 'OU=Comunicacion-Prensa'
