REM At first, start setup.sh to setup project.
REM please, run start.sh if project is ready.
REM this script will create JSDOCs
set PATH=%PATH%;C:\Program Files\nodejs;
call "./node_modules/.bin/jsdoc.cmd" ./src -r -d docs
pause