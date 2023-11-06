#!/bin/bash
echo "----------------------------------------------------------------------"
echo "        Automated installer for fischertechnik Robo Pro Coding"
echo "----------------------------------------------------------------------"

echo "For more information visit: https://docs.felix-lets-plays.de/ftinstall"

echo "----------------------------------------------------------------------"



#create dir, to prevent to overfill current folder 
echo "Creating fischerinstall directory and chaning directory"
mkdir fischerinstall
cd fischerinstall


#wget image from fischertechnik
echo "Downloading the ZIP from fischertechnik (with wget; please make sure that wget is installed)"
wget https://update.fischertechnik-cloud.com/repository/ft-roboprocoding-public/ft-roboprocoding-linux-STABLE.zip


#unzip file
echo "Unzipping downloaded file"
unzip ft-roboprocoding-linux-STABLE.zip


#move
echo "Moving unzipped file"
mv ROBOProCoding.AppImage ..
cd ..
rm -fr fischerinstall


#add perms
chmod a+x ./ROBOProCoding.AppImage


#launch app
./ROBOProCoding.AppImage


#delete file
rm ROBOProCoding.AppImage