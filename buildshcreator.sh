#!/bin/bash
export user=$(whoami);

##FUNCTIONS
##
##	Prints vendors selection menu
ventor_menu() {
    echo "VENDORS:"
	echo 1.	Commitiva
	echo 2.	Geeksphone
	echo 3.	HTC
	echo 4.	Motorola
	echo 5.	Samsung
	echo 6.	Viewsonic
	echo 7.	ZTE
}

## Prints HTC devices selection menu
HTCdev_menu() {
	echo "HTC DEVICES:"
	echo 1.	Ace
	echo 2.	Aria
	echo 3.	Desire CDMA
	echo 4.	Desire GSM
	echo 5.	Dream
	echo 6.	Evo 4G
	echo 7.	Glacier
	echo 8.	Hero CDMA
	echo 10.Incredible
	echo 11.Legend
	echo 12.Magic
	echo 13.Passion
	echo 14.Slide
	echo 15.Vision
	echo 16.Wildfire
        echo 17.Leo
}

## Prints Samsung devices selection menu
Samsungdev_menu() {
	echo "SAMSUNG DEVICES:"
	echo 1.	Galaxy S
	echo 2.	Nexus S
}

##VARIABLES: $_vendor , $_device , $_udev_v

##Show all vendors an select one
ventor_menu
echo
echo -n "Select Vendor(1-7): "
read vendor
while [[ $vendor -lt 1 || $vendor -gt 7 ]]; do
	echo "Selection ERROR.."
	echo -n "Select Vendor(1-7): "
	read vendor
done
echo

case  $vendor in
 1) echo "Vendor=Commitiva, Device=Z71"
	_vendor="Commtiva"
	_device="z71"
	;;
 2) echo "Vendor=Geeksphone, Device=One"
	_vendor="geeksphone"
	_device="one"
	;;
 4) echo "Vendor=Motorola, Device=Droid"
	_vendor="motorola"
	_device="sholes"
	;;
 6) echo "Vendor=Viewsonic, Device=G Tablet"
	_vendor="nvidia"
	_device="harmony"
	;;
 7) echo "Vendor=ZTE, Device=G Tablet"
	_vendor="zte"
	_device="blade"
	;;
 5) Samsungdev_menu
	echo
	echo -n "Select Device(1-2): "
	read device
	while [[ $device -lt 1 || $device -gt 2 ]]; do
		echo "Selection ERROR.."
		echo -n "Select Device(1-2): "
		read device
	done
	echo
	case $device in
	 1) echo "Vendor=Samsung, Device=Galaxy S"
		_vendor="samsung"
		_device="vibrant"
		;;
	 2) echo "Vendor=Samsung, Device=Nexus S"
		_vendor="samsung"
		_device="crespo"
		;;
	esac
	;;
 3) HTCdev_menu
	echo
	echo -n "Select Device(1-17): "
	read device
	while [[ $device -lt 1 || $device -gt 17 ]]; do
		echo "Selection ERROR.."
		echo -n "Select Device(1-17): "
		read device
	done
	echo
	case $device in
	 1) echo "Vendor=HTC, Device=Ace"
		_vendor="htc"
		_device="ace"
		;;
	 2) echo "Vendor=HTC, Device=Aria"
		_vendor="htc"
		_device="liberty"
		;;
	 3) echo "Vendor=HTC, Device=Desire CDMA"
		_vendor="htc"
		_device="bravoc"
		;;
	 4) echo "Vendor=HTC, Device=Desire GSM"
		_vendor="htc"
		_device="bravo"
		;;
	 5) echo "Vendor=HTC, Device=Dream"
		_vendor="htc"
		_device="dream_sapphire"
                _incompatible="dream"
		;;
	 6) echo "Vendor=HTC, Device=Evo 4G"
		_vendor="htc"
		_device="supersonic"
		;;
	 7) echo "Vendor=HTC, Device=Glacier"
		_vendor="htc"
		_device="glacier"
		;;
	 8) echo "Vendor=HTC, Device=Hero CDMA"
		_vendor="htc"
		_device="heroc"
		;;
	 9) echo "Vendor=HTC, Device=Hero GSM"
		_vendor="htc"
		_device="hero"
		;;
	 10) echo "Vendor=HTC, Device=Incredible"
		_vendor="htc"
		_device="inc"
		;;
	 11) echo "Vendor=HTC, Device=Legend"
		_vendor="htc"
		_device="legend"
		;;
	 12) echo "Vendor=HTC, Device=Magic"
		_vendor="htc"
		_device="dream_sapphire"
                _incompatible="dream"
		;;
	 13) echo "Vendor=HTC, Device=Passion"
		_vendor="htc"
		_device="passion"
		;;
	 14) echo "Vendor=HTC, Device=Slide"
		_vendor="htc"
		_device="espresso"
		_udev_v="0bb4"
		_idev_p="0e03"
		;;
	 15) echo "Vendor=HTC, Device=Vision"
		_vendor="htc"
		_device="vision"
		;;
	 16) echo "Vendor=HTC, Device=Wildfire"
		_vendor="htc"
		;;	
         17) echo "Vendor=HTC, Device=Leo"
		_vendor="htc"
		_device="leo"
		;;	
           esac
	;;
esac


echo
echo
rm ~/Desktop/build.sh

sh -c "echo 'clear' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu() {' >> ~/Desktop/build.sh"
sh -c "echo '	echo ""    	' >> ~/Desktop/build.sh"
sh -c "echo '	echo ""' >> ~/Desktop/build.sh"
sh -c "echo '	echo ""' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	MENU:\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	1.Clean installation (make clean)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	2.Remove \"out\" directory (make clobber)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	3.Check for Rom Manager Updates\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	4.Build\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	-\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	5.EXIT\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"\"' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo -n \"Select Option(1-5): \"' >> ~/Desktop/build.sh"
sh -c "echo 'read option' >> ~/Desktop/build.sh"
sh -c "echo 'while [[ \$option -lt 1 || \$option -gt 5 ]]; do' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Selection ERROR..\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo -n \"Select Option(1-5): \"' >> ~/Desktop/build.sh"
sh -c "echo '	read option' >> ~/Desktop/build.sh"
sh -c "echo 'done' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'case  \$option in' >> ~/Desktop/build.sh"
sh -c "echo ' 1) echo \"Cleaning build files...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clean' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 2) echo \"Cleaning output directory...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clobber' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 3) echo \"Checking for Rom Manager Updates...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/vendor/cyanogen' >> ~/Desktop/build.sh"
sh -c "echo '	./get-rommanager' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 4) echo \"Building Rom...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh && brunch $_device' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm7-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm7-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo '  5) echo \"EXIT\"' >> ~/Desktop/build.sh"
sh -c "echo '	exit' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo 'esac' >> ~/Desktop/build.sh"
sh -c "echo '}' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu' >> ~/Desktop/build.sh"
chmod 755 ~/Desktop/build.sh



echo
echo "Time to check your build in your Builds folder on your Desktop."
echo

