#!/bin/bash
#Run setup.sh, if you want to setup project!
#Run start.sh, if project is ready!

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
echo "# Current OS is $current_os #"
echo "# I think, that I will use *.$sh_or_cmd files for installation #"
echo "# Do you agree? #"
echo "# P.s. else I will use *.$other_start files... #"
echo "# Please, write answer... (y/n/sh/cmd) [y] #"

read input_value

if [ "$input_value" == "n" ]
then
		sh_or_cmd="$other_start"
elif [ "$input_value" == "sh" ]
then
		sh_or_cmd="sh"
elif [ "$input_value" == "cmd" ]
then
		sh_or_cmd="cmd"
fi
		
echo "# Good!  I will use *.$sh_or_cmd files #"

os_conf_file="osconf.txt"
rm -f -- $os_conf_file
echo "$sh_or_cmd" >> "$os_conf_file"

echo "# Use next command to run project: #"
echo "# $ bash start.sh #"
echo "# I can run it after installation! #"
echo "# Do you agree? #"
echo "# Please, write answer... (y/n) [n] #"

read input_v

if [ "$sh_or_cmd" == "cmd" ]
then
		cmd "/C winsetup.cmd"
		cmd "/C jsdoc-run.cmd"
		read input_s
else
		npm install
		node_modules/.bin/jsdoc ./src -r -d docs
fi
echo ""
echo "# Instalation completed! #"


if [ "$input_v" == "y" ]
then
		echo "### Good! Run start.sh...! ###"
		bash start.sh
else
		echo "### Good! Buy! ###"
fi
