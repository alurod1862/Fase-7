#!/bin/bash

#script crear uo,grupos 

#Eliminar uo

samba-tool ou delete 'OU=Alergologia-usuarios,OU=Alergologia'
samba-tool ou delete 'OU=Enfermeria-usuarios,OU=Enfermeria'
samba-tool ou delete 'OU=Informatica-usuarios,OU=Informatica'
samba-tool ou delete 'OU=Comunicacion-Prensa-usuarios,OU=Comunicacion-Prensa'

#samba-tool ou delete 'OU=Alergologia-equipos,OU=Alergologia'
#samba-tool ou delete 'OU=Enfermeria-equipos,OU=Enfermeria'
#samba-tool ou delete 'OU=Informatica-equipos,OU=Informatica'
#samba-tool ou delete 'OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa'

#samba-tool ou delete 'OU=Alergologia'
#samba-tool ou delete 'OU=Enfermeria'
#samba-tool ou delete 'OU=Informatica'
#samba-tool ou delete 'OU=Comunicacion-Prensa'

#Eliminar grupos

samba-tool group delete GG-Dep-Alergologia
samba-tool group delete GG-Dep-Enfermeria
samba-tool group delete GG-Dep-Informatica
samba-tool group delete GG-Dep-Comunicacion-Prensa

#Eliminar equipos

samba-tool computer delete W10-1-A
samba-tool computer delete W10-2-A
samba-tool computer delete W10-3-A
samba-tool computer delete W10-4-A

samba-tool computer delete W10-5-E
samba-tool computer delete W10-6-E

samba-tool computer delete W10-7-I
samba-tool computer delete W10-8-I
samba-tool computer delete W10-9-I
samba-tool computer delete W10-10-I

samba-tool computer delete U20-1-CP
samba-tool computer delete U20-2-CP
samba-tool computer delete U20-3-CP
samba-tool computer delete U20-4-CP
samba-tool computer delete U20-5-CP
