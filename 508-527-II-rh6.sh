#!/bin/bash
###
# CAT II
# RHEL-06 - 508 527
# STIG ID's:
############################################################################


echo "STIG 508 527 CAT II
If the GConf2 package is not installed, this is not applicable.

rpm -qi GConf2
"

rpm -qi GConf2

echo "
508 - Verify the keybindings for the Gnome screensaver:

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory 
--get /apps/gnome_settings_daemon/keybindings/screensaver

If no output is visible, this is a finding.

527 - To ensure the user list is disabled, run the following command:

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory 
--get /apps/gdm/simple-greeter/disable_user_list

The output should be "true". If it is not, this is a finding.
STIG 508 527 CAT II
"
