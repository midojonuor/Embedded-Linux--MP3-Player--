#!/bin/sh

oldDevices="~/newFiles"
newDevices="~/newFiles2"
songList="~/songs.txt"
mountDirectory="/media/$USER"

if [ ! -f "$oldDevices" ]; then
	touch $oldDevices
	echo "0" > $oldDevices 
fi


search=$(find /dev/ -name sd*)
if  [ ! -z "$search"  ] ; then 
		echo $search | tr " " "\n"> $oldDevices
fi

while true; do
	sleep 1
	search2=$(find /dev/ -name sd*) 
	echo $search2 | tr " " "\n"> $newDevices
	if cmp -s $oldDevices $newDevices ; then
    	echo 'The file "%s" is the same as "%s"\n' "$file1" "$file2" > /dev/null
	else
    	echo "something changed"
    	cp  $newDevices $oldDevices
	fi
	while read p; do
		if grep -qs $p /proc/mounts; then
		    echo "$p is mounted." > /dev/null
		else
		    echo "$p is not mounted." #> /dev/null
		    tempV=$(expr substr ${p} 5 10)
		    #echo $tempV
		    mkdir -p $mountDirectory/"$tempV"
		    mount $p $mountDirectory/"$tempV"
		    
		fi
	done < $oldDevices
	find / -depth -name '*.mp3' > $songList
done
