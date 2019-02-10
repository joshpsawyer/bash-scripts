#!/bin/bash
# Build a project directory infrastructure and create some stub markdown files for organization.
# Various types of projects are supported
# Copyright 2019 Josh Sawyer
# MIT License

if [ -z "$1" ] || [ -z "$2" ] ; then
	echo "
builds a project directory structure and stub files in the current directory

Usage:
	$ mkproj projectype project_name

Valid projecttype options:
	'mxd' for ArcMap projects
	'code' for coding projects

Examples:
	$ mkproj mxd cool_new_map"
	exit 0
else 
	if [ "$1" == "mxd" ]; then
		mkdir "$2"
		mkdir "$2/data"
		mkdir "$2/mxd"
		mkdir "$2/doc"
		mkdir "$2/results"
		touch "$2/README.md"
		exit 0
	fi
fi
exit 0