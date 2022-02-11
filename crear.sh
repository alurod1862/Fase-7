#!/bin/bash

#script crear uo,grupos

#uo

samba-tool ou create 'OU=Alergologia,DC=san-gva,DC=es' --description='Departamento Alergia'
samba-tool ou create 'OU=Enfermeria,DC=san-gva,DC=es' --description='Departamento Enfermeria'
samba-tool ou create 'OU=Informatica,DC=san-gva,DC=es' --description='Departamento Informatica'
samba-tool ou create 'OU=Comunicacion-Prensa,DC=san-gva,DC=es' --description='Departamento Comunicacion y prensa'

#uo-usuarios

samba-tool ou create 'OU=Alergologia-usuarios,OU=Alergologia,DC=san-gva,DC=es' --description='Departamento usuarios Alergia'
samba-tool ou create 'OU=Enfermeria-usuarios,OU=Enfermeria,DC=san-gva,DC=es' --description='Departamento usuarios Enfermeria'
samba-tool ou create 'OU=Informatica-usuarios,OU=Informatica,DC=san-gva,DC=es' --description='Departamento usuarios Informatica'
samba-tool ou create 'OU=Comunicacion-Prensa-usuarios,OU=Comunicacion-Prensa,DC=san-gva,DC=es' --description='Departamento usuarios Comunicacion y prensa'


#uo-equipos

samba-tool ou create 'OU=Alergologia-equipos,OU=Alergologia,DC=san-gva,DC=es' --description='Departamento equipos Alergia'
samba-tool ou create 'OU=Enfermeria-equipos,OU=Enfermeria,DC=san-gva,DC=es' --description='Departamento equipos Enfermeria'
samba-tool ou create 'OU=Informatica-equipos,OU=Informatica,DC=san-gva,DC=es' --description='Departamento equipos Informatica'
samba-tool ou create 'OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es' --description='Departamento equipos Comunicacion y prensa'

#grupos
samba-tool group add GG-Dep-Alergologia --groupou='ou=Alergologia' --group-type=Security --group-scope=Global
samba-tool group add GG-Dep-Enfermeria --groupou='ou=Enfermeria' --group-type=Security --group-scope=Global
samba-tool group add GG-Dep-Informatica --groupou='ou=Informatica' --group-type=Security --group-scope=Global
samba-tool group add GG-Dep-Comunicacion-Prensa --groupou='ou=Comunicacion-Prensa' --group-type=Security --group-scope=Global

#equipos

#Alergologia

samba-tool computer create W10-1-A --computerou='OU=Alergologia-equipos,OU=Alergologia,DC=san-gva,DC=es'
samba-tool computer create W10-2-A --computerou='OU=Alergologia-equipos,OU=Alergologia,DC=san-gva,DC=es'
samba-tool computer create W10-3-A --computerou='OU=Alergologia-equipos,OU=Alergologia,DC=san-gva,DC=es'
samba-tool computer create W10-4-A --computerou='OU=Alergologia-equipos,OU=Alergologia,DC=san-gva,DC=es'

#Enfermeria

samba-tool computer create W10-5-E --computerou='OU=Enfermeria-equipos,OU=Enfermeria,DC=san-gva,DC=es'
samba-tool computer create W10-6-E --computerou='OU=Enfermeria-equipos,OU=Enfermeria,DC=san-gva,DC=es'

#Informatica

samba-tool computer create W10-7-I --computerou='OU=Informatica-equipos,OU=Informatica,DC=san-gva,DC=es'
samba-tool computer create W10-8-I --computerou='OU=Informatica-equipos,OU=Informatica,DC=san-gva,DC=es'
samba-tool computer create W10-9-I --computerou='OU=Informatica-equipos,OU=Informatica,DC=san-gva,DC=es'
samba-tool computer create W10-10-I --computerou='OU=Informatica-equipos,OU=Informatica,DC=san-gva,DC=es'

#Comunicion-Prensa

samba-tool computer create U20-1-CP --computerou='OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es'
samba-tool computer create U20-2-CP --computerou='OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es'
samba-tool computer create U20-3-CP --computerou='OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es'
samba-tool computer create U20-4-CP --computerou='OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es'
samba-tool computer create U20-5-CP --computerou='OU=Comunicacion-Prensa-equipos,OU=Comunicacion-Prensa,DC=san-gva,DC=es'

samba-tool group list

samba-tool computer list

