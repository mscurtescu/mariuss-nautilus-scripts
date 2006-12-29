if [ $# -ne 1 ] ; then
    echo "Please specify the version number as an argument."
    exit -1
fi

PACKAGE_NAME="nautilus-image-scripts-$1"
PACKAGE_TAR_NAME="$PACKAGE_NAME.tar.gz"

mkdir $PACKAGE_NAME

cp -r --target-directory $PACKAGE_NAME Image actions icons AUTHORS CHANGES INSTALL LICENSE README

find $PACKAGE_NAME -name "*~" -exec rm {} \;

if [ -e $PACKAGE_TAR_NAME ] ; then
    rm $PACKAGE_TAR_NAME
fi

tar -czf $PACKAGE_TAR_NAME $PACKAGE_NAME

rm -r $PACKAGE_NAME

