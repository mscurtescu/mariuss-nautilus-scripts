if [ $# -ne 1 ] ; then
    echo "Please specify the version number as an argument."
    exit -1
fi

PACKAGE_NAME="nautilus-svn-scripts-$1"
PACKAGE_TAR_NAME="$PACKAGE_NAME.tar.gz"

mkdir $PACKAGE_NAME

cp -r --target-directory $PACKAGE_NAME Subversion AUTHORS CHANGES INSTALL LICENSE README TODO NautilusScriptsDebug

if [ -e $PACKAGE_TAR_NAME ] ; then
    rm $PACKAGE_TAR_NAME
fi

tar -czf $PACKAGE_TAR_NAME $PACKAGE_NAME --exclude="*~"

rm -r $PACKAGE_NAME

