#!/bin/bash
#Run setup.sh, if you want to setup project!
#Run start.sh, if project is ready!

echo "### Hello World! ###"
echo "### I'm MistAgeAssistant! ###"
echo "### Hmm. You installed project yet! ###"

os_conf_file="osconf.txt"
sh_or_cmd="$(cat $os_conf_file)"
echo "### You selected *.$sh_or_cmd files. ###"
echo "### What do you want run? ###"
echo "(webserver/docwebserver/docupdate/close)"
echo "P.s. Default is [close]"
echo "Write word:"

read input_value
#webserver
#docwebserver
#docupdate
#close
#[close]
if [ "$sh_or_cmd" == "cmd" ]
then
	if [ "$input_value" == "webserver" ]
	then
			echo "Run webserver for MistAgeRoadmap...!"
			echo "localhost:8080"
			cmd "/C open.site.cmd"	
	elif [ "$input_value" == "docwebserver" ]
	then
			echo "Run webserver for JSDOCs...!"
			echo "localhost:8081"
			cmd "/C open.docs.cmd"	
	elif [ "$input_value" == "docupdate" ]
	then
			echo "Update docs...!"
			cmd "/C jsdoc-run.cmd"	
	fi
else
	if [ "$input_value" == "webserver" ]
	then
			echo "Run webserver for MistAgeRoadmap...!"
			echo "Which port I can use?"
			echo "P.s. Default is [8080]"
			echo "Write port:..."
			current_port=8080
			read -p "Type a number or a string: " input_port
			if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
				current_port=$input_port
			fi
			echo "localhost:$current_port"
			cd src
			"../node_modules/.bin/static-server" -p $current_port
			cd ".."
	elif [ "$input_value" == "docwebserver" ]
	then
			echo "Run webserver for JSDOCs...!"
			echo "Which port I can use?"
			echo "P.s. Default is [8081]"
			echo "Write port:..."
			current_port=8081
			read -p "Type a number or a string: " input_port
			if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
				current_port=$input_port
			fi
			echo "localhost:$current_port"
			cd docs
			"../node_modules/.bin/static-server" -p $current_port
			cd ".."
	elif [ "$input_value" == "docupdate" ]
	then
			node_modules/.bin/jsdoc ./src -r -d docs
	fi
fi
echo "### Good! Buy! ###"