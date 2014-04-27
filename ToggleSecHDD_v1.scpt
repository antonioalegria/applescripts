# Remove disk from Spotlight index
do shell script "pmset -a disksleep 1" with administrator privileges

# Mount disk if it's not already mounted
tell application "Finder"
	if not (exists the disk "MacOld") then
		do shell script "diskutil mountDisk 'disk1'"
		do shell script "mdutil -i off /Volumes/MacOld" with administrator privileges
		do shell script "mdutil -i off /Volumes/BOOTCAMP" with administrator privileges
		tell application "Finder"
			activate
			make new Finder window
			set target of Finder window 1 to disk "MacOld"
		end tell
	else
		do shell script "diskutil eject 'disk1'"
	end if
end tell

# Remove disk from Spotlight index
do shell script "pmset -a disksleep 1" with administrator privileges

