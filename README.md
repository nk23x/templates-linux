# templates-linux
templates of linux configuration files

## description
work in progress and considered the base of a simple deployment (bash-)script for configuring (existing) linux environments

the future deployment bash script will just copy the files to the system and replace certain strings - like "#<-- TEMPLATE_VARIABLE_NAME -->#" - with values from an file that just contains NAME="VALUE" pairs.

the initial ini file can be generated like 

  ./make_ini.sh > ini

or if you just need the variables of a certain level 1 directories

  ./make_ini.sh etc usr > ini
  

