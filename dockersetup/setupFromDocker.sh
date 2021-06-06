#!/bin/bash
#It's script for Docker setup!
#If project isn't in Docker, you can run setup.sh, if you want to setup project!
#Run start.sh, if project is ready!

cd ".."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
		current_os="linux-gnu"
		sh_or_cmd="sh"
		other_start="cmd"
        # 
elif [[ "$OSTYPE" == "darwin"* ]]; then
		current_os="darwin"
		sh_or_cmd="sh"
		other_start="cmd"
        # Mac OSX
elif [[ "$OSTYPE" == "cygwin" ]]; then
		current_os="cygwin"
		sh_or_cmd="cmd"
		other_start="sh"
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
		current_os="msys"
		sh_or_cmd="cmd"
		other_start="sh"
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
		current_os="win32"
		sh_or_cmd="cmd"
		other_start="sh"
        # 
elif [[ "$OSTYPE" == "freebsd"* ]]; then
		current_os="freebsd"
		sh_or_cmd="sh"
		other_start="cmd"
        #
else
		current_os="unknown"
		sh_or_cmd="sh"
		other_start="cmd"
        # Unknown.
fi

echo "### Hello World! ###"
echo "### I'm MistAgeAssistant! ###"
echo "### I want to help you install webserver and create documentation. ###"
echo "### But... Hm, I'm in Docker and installation will be faster! ###"
echo "# Current OS is $current_os #"
echo "# I think, that I will use *.$sh_or_cmd files for installation #"

sh_or_cmd="sh"

os_conf_file="osconf.txt"
rm -f -- $os_conf_file
echo "$sh_or_cmd" >> "$os_conf_file"

echo "# Use next command to run project: #"
echo "# $ bash start.sh #"
echo "# I run it after installation! #"


npm install
node_modules/.bin/jsdoc ./src -r -d docs

echo ""
echo "# Instalation completed! #"

echo "# Maybe, I can execute 'dry run' to test? #"
echo "# There is testing webserver with website and jsdoc-webserver after closing the website (port: 8080) #"
echo "# Do you agree (else actual run)? #"
echo "# Please, write answer... (y/n) [y] #"

read input_v

if [ "$input_v" == "y" ]
then
		echo "### Good! Dry run... ###"
		echo "### Hello World! ###"
		echo "### I'm MistAgeAssistant! ###"
		echo "### Hmm. You installed project yet! ###"
		echo "### And it's dry run! ###"
		echo "### Let's test! ###"
		echo "Run webserver for MistAgeRoadmap...!"
		echo "localhost:8080"
		cd src
		"../node_modules/.bin/static-server" -p 8080
		cd ".."
		
		echo "Webserver closed!"
		echo "Run webserver for JSDOCs...!"
		echo "Which port I can use?"
		echo "localhost:8080"
		cd docs
		"../node_modules/.bin/static-server" -p 8080
		cd ".."
		echo "Webserver for JSDOCs closed!"
		echo "Buy!"
else
		echo "### Good! Actual run from start.sh... ###"
		bash start.sh
fi
