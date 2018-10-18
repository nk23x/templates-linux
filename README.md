# templates-linux
templates of linux configuration files

## description
work in progress and considered the base of a simple deployment (bash-)script for configuring (existing) linux environments. the future deployment bash script will just copy the files to the system and replace certain strings with values from an ini file.

the initial ini file can be generated like 
```
 ./make_ini.sh > ini
```
or if you just need the variables of a certain level 1 directories
```
 ./make_ini.sh etc usr > ini
```
## synopsis
### template variable names
```
 #<-- TEMPLATE_VARIABLE_NAME --># 
```

### ini file format
``` 
 TEMPLATE_VARIABLE_NAME="VALUE"
```
 
## motivation
- ansible is the worst piece of crap i ran into in recent years
- chef sucks
- terraform is for infrastructure 

