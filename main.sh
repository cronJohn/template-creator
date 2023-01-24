#!/bin/bash

safe_cd() {
    location=$(echo "$*" | sed 's/,//g') # Remove ,
    
    if [ ! -d $location ]; then
        mkdir $location
    fi
    
    cd $location
}

template_touch(){
    name=$1

    find $templates_dir -type f -name $name -exec cp {} . \;
    if [ ! -f $name ]; then # no template found
        touch $name
    fi

}

user_input="$*"
templates_dir=~/Templates/

replaced_delimiter_string=$(echo $user_input | sed -e 's/,/, /g' -e 's/+/ + /g' -e 's/\// \/ /g')

for cmd in $replaced_delimiter_string; do
    case $cmd in
        /) cd ..;;
        *,*) safe_cd "$(pwd)/$cmd";;
        *) if [[ $cmd == *.* ]]; then
               template_touch $cmd
           else
               mkdir $cmd &> /dev/null
           fi
    esac
done

