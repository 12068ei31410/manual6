#!/bin/bash
###
# CAT II
# RHEL-06 - 324 326
# STIG ID's:
############################################################################


echo "STIG 324 326 CAT II
If the GConf2 package is not installed, this is not applicable.

rpm -qi GConf2
"

rpm -qi GConf2

echo "
324 - To ensure a login warning banner is enabled, run the following: 

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory 
--get /apps/gdm/simple-greeter/banner_message_enable

Search for the 'banner_message_enable' schema. If properly configured, the 'default' value should be 'true'. 

326 - To ensure login warning banner text is properly set, run the following: 

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory
 --get /apps/gdm/simple-greeter/banner_message_text

If properly configured, the proper banner text will appear within this schema. 
STIG 324 326 CAT II
"
