REM At first, start setup.sh to setup project.
REM please, run start.sh if project is ready.
REM this script will run webserver for MistAgeRoadmap on localhost:8080
cd src
set PATH=%PATH%;C:\Program Files\nodejs;
call "..\node_modules\.bin\static-server.cmd" -p 8080 
cd ..