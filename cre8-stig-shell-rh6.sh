#!/bin/bash
###
#
###


echo "#!/bin/bash" > $1-$2-rh6.sh
echo "###" >> $1-$2-rh6.sh
echo "# CAT $2" >> $1-$2-rh6.sh
echo "# RHEL-06 - $1" >> $1-$2-rh6.sh
echo "# STIG ID's:" >> $1-$2-rh6.sh
echo "############################################################################

" >> $1-$2-rh6.sh

echo "echo \"STIG $1 CAT $2
" >> $1-$2-rh6.sh

echo "Results:
" >> $1-$2-rh6.sh

echo "STIG $1 CAT $2
\"" >> $1-$2-rh6.sh

vi $1-$2-rh6.sh
