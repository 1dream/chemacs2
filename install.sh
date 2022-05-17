/usr/bin/env sh
# in a temp directory run
# curl https://raw.githubusercontent.com/caiorss/Emacs-Bootstrap/master/install.sh | sh -

echo Chemacs2 - The init manager for emacs.
echo Installing chemacs2 to manager your emacs configurations
echo Documentation see https://github.com/plexus/chemacs2
read -p "Do you want to continue?"
TOOLS="emacs git curl"
echo "checking for required tools:"
for TOOL in $TOOLS
do
    TOOLPATH=$(which $TOOL)
    if [ -z $TOOLPATH ];
    then
        echo "[ ]  $TOOL\t"
        TOOL_MISSING_P="true"
    else
        echo "[X] $(which $TOOL)"
    fi
done
if [ "true" = $TOOL_MISSING_P ]; then
   echo -----------------
   echo "a required software is missing please install it first and run this script again"
   exit
fi
echo "Now verifying the emacs versions"
echo "Now verifying the emacs versions"
read -p "Do you want to continue?"
$(which emacs) --version
