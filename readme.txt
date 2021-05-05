At first, start setup.sh to setup project.
Please, run start.sh if project is ready.

############################################
### Main plan (WIN and SH installation): ###
# Installation: #
 1) $ bash setup.sh
 2) Script can select current OS (sh/cmd)
 3) You can access current OS (y/n) or select better files (sh/cmd)
    Default answer is [y]
 4) Script can run project by start.sh after installation(y/n)
    Default answer is [n]
 5) Script will install jsdoc from project.json (npm install)
 6) Script will create JSDOCs (but you can update it after installation too)
 7) Instalation completed!
 *8) Starting start.sh if it was selected
# Run project: #
 1) $ bash start.sh
 2) You can select, what script will run (webserver/docwebserver/docupdate/close)
    Default answer is [close]
MistAgeRoadmap Webserver (webserver):
 3) You can write port
    Default answer is [8080]
 *4) CTRL+C to close webserver 
JSDOCs Webserver (docwebserver):
 3) You can write port
    Default answer is [8081]
 *4) CTRL+C to close webserver 
Update JSDOCs (docupdate):
 3) Update JSDOcs
###                                      ###
############################################

####################################################
### *Windows plan (WIN- Manual installation,     ### 
### but you can run only Main plan by Git Bash): ###
# Installation: #
 0) Install NodeJS with npm 
 1) run winsetup.cmd
 2) run jsdoc-run.cmd (but you can update it after installation too)
# All parts to run project: #
 JSDOC) run jsdoc-run.cmd
 JSDOCs Webserver) run open.docs.cmd
	Default port: 8081
 MistAgeRoadmap Webserver) run open.site.cmd
	Default port: 8080
###                                              ###
####################################################