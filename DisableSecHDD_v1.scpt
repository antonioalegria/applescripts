# Remove disk from Spotlight index
do shell script "pmset -a disksleep 1" with administrator privileges

# Unmount disk if it's not already mounted
tell application "Finder"
	if not (exists the disk "MacOld") then
		do shell script "diskutil mountDisk 'disk1'"
		do shell script "mdutil -i off /Volumes/MacOld" with administrator privileges
		do shell script "mdutil -i off /Volumes/BOOTCAMP" with administrator privileges
	end if
end tell

do shell script "diskutil eject 'disk1'"

# Remove disk from Spotlight index
do shell script "pmset -a disksleep 1" with administrator privileges
