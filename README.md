applescripts
============

Useful scripts for managing and tweaking my Macs

Currently there are the following Scripts:

 * **DisableSecHDD.scpt**: completely disable your secondary HDD. THis is useful when you have two hard drives in your Macbook and the secondary one (in the Optical Tray) is not an SSD or you only rarely want to use it. By disabling it you can save lots of battery.
 * **DisableSecHDD_IfUnmounted.scpt**: similar to `DisableSecHDD.scpt` but only deactivates the disk if it is unmounted. This should be triggered on Wake from Sleep.
 * **EnableSecHDD.scpt**: mount and open your secondary HDD.
 * **ToggleSecHDD.scpt**: enable the secondary HDD if it's disabled and disable it otherwise.
 * **TurnOnSafeSleep.scpt**: force-enable Safe Sleep for any reasonably recent Mac. Safe Sleep sets your Mac to hibernate mode after an hour sleeping. This can be used to save some battery.
 
**NOTE:**: some of these scripts run some commands which require administrative privileges. Typically this is done by running a command `with administrator privileges`, which shows a password dialog. Since I wanted to automate these scripts execution (e.g. on Startup, on Wake), I used `sudo` and set up my sudoers file with NOPASSWD permissions for these specific commands.

