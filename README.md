# Amaze Base

This repository contains base framework for _Foundation_.

## Download

__Git__:

	git clone https://github.com/amazeplc/amazebase.git -b foundation

__Or Download__:

	https://github.com/amazeplc/amazebase/archive/foundation.zip

## Setup

### Windows

__Dependencies__:

- NodeJS (http://nodejs.org/download/)
- Ruby (http://rubyinstaller.org/downloads/)

__Double-click / Run in cmd.exe__:

	setup.bat

### Linux / OS X

- NodeJS (http://nodejs.org/download/)
- Ruby (OS X has it by default, otherwise follow _Package Management Systems_ in http://www.ruby-lang.org/en/downloads/.)

__Open Terminal and run__:

	chmod +x setup.sh

	./setup.sh

Once setup completes it will open the Grunt server task,
which will build app and create a dist folder, which will be the server's root.

## Sublime Text Build

To build the project, add the following build systems to Sublime Text by using __Tools -> Build System -> New Build System__ and name them as follows:

__Grunt.sublime-build__:

	{
	  "cmd": ["grunt", "--no-color"],
	  "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
	  "working_dir": "${project_path:${folder:${file_path}}}",
	  "selector": "Gruntfile.js",
	  "windows":
	  {
	    "cmd": ["grunt.cmd", "--no-color"]
	  },
	  "variants":
	  [
	    {
	      "name": "Gruntfile",
	      "cmd": ["grunt", "--no-color"],
	      "windows":
	      {
	        "cmd": ["grunt.cmd", "--no-color"]
	      }
	    }
	  ]
	}

__GruntProduction.sublime-build__:

	{
	  "cmd": ["grunt", "--no-color"],
	  "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
	  "working_dir": "${project_path:${folder:${file_path}}}",
	  "selector": "Gruntfile.js",
	  "windows":
	  {
	    "cmd": ["grunt.cmd", "--no-color", "production"]
	  },
	  "variants":
	  [
	    {
	      "name": "Gruntfile",
	      "cmd": ["grunt", "--no-color", "production"],
	      "windows":
	      {
	        "cmd": ["grunt.cmd", "--no-color", "production"]
	      }
	    }
	  ]
	}

__GruntServer.sublime-build__:

	{
	  "cmd": ["grunt", "--no-color"],
	  "file_regex": "^(..[^:]*):([0-9]+):?([0-9]+)?:? (.*)$",
	  "working_dir": "${project_path:${folder:${file_path}}}",
	  "selector": "Gruntfile.js",
	  "windows":
	  {
	    "cmd": ["grunt.cmd", "--no-color", "server"]
	  },
	  "variants":
	  [
	    {
	      "name": "Gruntfile",
	      "cmd": ["grunt", "--no-color", "server"],
	      "windows":
	      {
	        "cmd": ["grunt.cmd", "--no-color", "server"]
	      }
	    }
	  ]
	}
