#!/bin/bash
export user=$(whoami);
_incompatible="0"

clear
echo
echo
echo
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
	echo 8. Emulator
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
echo -n "Select Vendor(1-8): "
read vendor
while [[ $vendor -lt 1 || $vendor -gt 8 ]]; do
	echo "Selection ERROR.."
	echo -n "Select Vendor(1-8): "
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
 7) echo "Vendor=ZTE, Device=Blade"
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
 8) echo "For building Emulator images, use the build.sh script from your desktop"
	echo "Vendor=Generic, Device=Emulator"
		_vendor="generic"
		_device="generic"
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


if [ "$_incompatible" == "0" ]; then {
sh -c "echo 'clear' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu() {' >> ~/Desktop/build.sh"
sh -c "echo '	echo     	' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	MENU:\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	1.Clean installation (make clean)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	2.Remove "out" directory (make clobber)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	3.Clean/Clobber\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	4.Clean/Clobber/Build\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	5.Check for Rom Manager Updates\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	6.Build\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	7.Add custom Mod Version Name\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	8.Repo Sync\"	' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	9.Push Latest Build to Phone\"	' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	10.Update SDK/ADB\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	11.Make emulator image\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	12.Remove builds from out dir\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	-\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	13.EXIT\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	If you wish to change device, please run the \"buildshcreator.sh\" script again\"' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo -n \"Select Option(1-13): \"' >> ~/Desktop/build.sh"
sh -c "echo 'read option' >> ~/Desktop/build.sh"
sh -c "echo 'while [[ \$option -lt 1 || \$option -gt 13 ]]; do' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Selection ERROR..\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo -n \"Select Option(1-13): \"' >> ~/Desktop/build.sh"
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
sh -c "echo ' 3) echo \"Cleaning build files and output directory...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clean' >> ~/Desktop/build.sh"
sh -c "echo '	make clobber' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 4) echo \"Cleaning build files and output directory...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clean' >> ~/Desktop/build.sh"
sh -c "echo '	make clobber' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Building...\"' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh && brunch $_device' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`	' >> ~/Desktop/build.sh"
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=cm-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo ' 5) echo \"Checking for Rom Manager Updates...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/vendor/cyanogen' >> ~/Desktop/build.sh"
sh -c "echo '	./get-rommanager' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 6) echo \"Building Rom...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh && brunch $_device' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`	' >> ~/Desktop/build.sh"
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=cm-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo ' 7)   	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`' >> ~/Desktop/build.sh"	
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Add name for Custom Mod Version\"' >> ~/Desktop/build.sh"
sh -c "echo '	read modname' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=\$modname-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo ' 	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 8) echo \"Repo Syncing...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 9) echo \"Pushing Latest Build To Phone... (from folder Builds)\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/Desktop/Builds' >> ~/Desktop/build.sh"
sh -c "echo '	echo \`ls *.zip -tr | tail -1\`' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb push \`ls *.zip -tr | tail -1\` /sdcard/' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 10) echo \"Updating SDK/ADB...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android-sdk*' >> ~/Desktop/build.sh"
sh -c "echo '	cd tools' >> ~/Desktop/build.sh"
sh -c "echo '	./android update sdk -u' >> ~/Desktop/build.sh"
sh -c "echo '	./android update adb' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb kill-server' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb start-server' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 11) echo \"Building Emulator image...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh ' >> ~/Desktop/build.sh"
sh -c "echo '	lunch 1    ' >> ~/Desktop/build.sh"
sh -c "echo '	make       ' >> ~/Desktop/build.sh"
sh -c "echo '	emulator' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 12) echo \"Removing builds from out dir...\"' >> ~/Desktop/build.sh"
sh -c "echo '	rm ~/android/system/out/target/product/$_device/update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	rm ~/android/system/out/target/product/$_device/update*.md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 13) exit' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'esac' >> ~/Desktop/build.sh"
sh -c "echo '}' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu' >> ~/Desktop/build.sh"
chmod 755 ~/Desktop/build.sh
}
fi

if [ "$_incompatible" == "dream" ]; then {
sh -c "echo 'clear' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu() {' >> ~/Desktop/build.sh"
sh -c "echo '	echo     	' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	MENU:\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	1.Clean installation (make clean)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	2.Remove "out" directory (make clobber)\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	3.Clean/Clobber\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	4.Clean/Clobber/Build\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	5.Check for Rom Manager Updates\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	6.Build\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	7.Add custom Mod Version Name\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	8.Repo Sync\"	' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	9.Push Latest Build to Phone\"	' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	10.Update SDK/ADB\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	11.Make emulator image\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	12.Remove builds from out dir\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	-\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	13.EXIT\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo ' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"	If you wish to change device, please run the \"buildshcreator.sh\" script again\"' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'echo' >> ~/Desktop/build.sh"
sh -c "echo 'echo -n \"Select Option(1-13): \"' >> ~/Desktop/build.sh"
sh -c "echo 'read option' >> ~/Desktop/build.sh"
sh -c "echo 'while [[ \$option -lt 1 || \$option -gt 13 ]]; do' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Selection ERROR..\"' >> ~/Desktop/build.sh"
sh -c "echo '	echo -n \"Select Option(1-13): \"' >> ~/Desktop/build.sh"
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
sh -c "echo ' 3) echo \"Cleaning build files and output directory...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clean' >> ~/Desktop/build.sh"
sh -c "echo '	make clobber' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 4) echo \"Cleaning build files and output directory...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	make clean' >> ~/Desktop/build.sh"
sh -c "echo '	make clobber' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Building...\"' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh' >> ~/Desktop/build.sh"
sh -c "echo 'lunch cyanogen_dream_sapphire-eng >> ~/Desktop/build.sh"
sh -c "echo 'mka bacon >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`	' >> ~/Desktop/build.sh"
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=cm-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo ' 5) echo \"Checking for Rom Manager Updates...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/vendor/cyanogen' >> ~/Desktop/build.sh"
sh -c "echo '	./get-rommanager' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 6) echo \"Building Rom...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh' >> ~/Desktop/build.sh"
sh -c "echo 'lunch cyanogen_dream_sapphire-eng >> ~/Desktop/build.sh"
sh -c "echo 'mka bacon >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`	' >> ~/Desktop/build.sh"
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=cm-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo ' 7)   	cd ~/android/system/out/target/product/$_device/system/' >> ~/Desktop/build.sh"
sh -c "echo '	Day=\`date +%d\`' >> ~/Desktop/build.sh"
sh -c "echo '	Date=\`date +%D\`' >> ~/Desktop/build.sh"
sh -c "echo '	Month=\`date +%m\`' >> ~/Desktop/build.sh"
sh -c "echo '	Year=\`date +%y\`' >> ~/Desktop/build.sh"
sh -c "echo '	Minute=\`date +%M\`' >> ~/Desktop/build.sh"
sh -c "echo '	Hour=\`date +%H\`' >> ~/Desktop/build.sh"
sh -c "echo '	Second=\`date +%S\`' >> ~/Desktop/build.sh"	
sh -c "echo '	mv build.prop build.text' >> ~/Desktop/build.sh"
sh -c "echo '	echo \"Add name for Custom Mod Version\"' >> ~/Desktop/build.sh"
sh -c "echo '	read modname' >> ~/Desktop/build.sh"
sh -c "echo '	sed \"s/ro.modversion=[^ ]*/ro.modversion=\$modname-\$Month\/\$Day\/\$Year-\$Hour\:\$Minute\:\$Second/\" build.text > build.prop' >> ~/Desktop/build.sh"
sh -c "echo '	rm build.text' >> ~/Desktop/build.sh"
sh -c "echo '	cp build.prop ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system/out/target/product/$_device/' >> ~/Desktop/build.sh"
sh -c "echo '	zip -qf update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.zip ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).zip' >> ~/Desktop/build.sh"
sh -c "echo '	cp ~/android/system/out/target/product/$_device/update*.md5sum ~/Desktop/Builds/update-cm-$_device-\$(date +%d_%m-%H.%M).md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo ' 	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 8) echo \"Repo Syncing...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	repo sync' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 9) echo \"Pushing Latest Build To Phone... (from folder Builds)\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/Desktop/Builds' >> ~/Desktop/build.sh"
sh -c "echo '	echo \`ls *.zip -tr | tail -1\`' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb push \`ls *.zip -tr | tail -1\` /sdcard/' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 10) echo \"Updating SDK/ADB...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android-sdk*' >> ~/Desktop/build.sh"
sh -c "echo '	cd tools' >> ~/Desktop/build.sh"
sh -c "echo '	./android update sdk -u' >> ~/Desktop/build.sh"
sh -c "echo '	./android update adb' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb kill-server' >> ~/Desktop/build.sh"
sh -c "echo '	sudo adb start-server' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 11) echo \"Building Emulator image...\"' >> ~/Desktop/build.sh"
sh -c "echo '	cd ~/android/system' >> ~/Desktop/build.sh"
sh -c "echo '	. build/envsetup.sh ' >> ~/Desktop/build.sh"
sh -c "echo '	lunch 1    ' >> ~/Desktop/build.sh"
sh -c "echo '	make       ' >> ~/Desktop/build.sh"
sh -c "echo '	emulator' >> ~/Desktop/build.sh"
sh -c "echo '	options_menu' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 12) echo \"Removing builds from out dir...\"' >> ~/Desktop/build.sh"
sh -c "echo '	rm ~/android/system/out/target/product/$_device/update*.zip' >> ~/Desktop/build.sh"
sh -c "echo '	rm ~/android/system/out/target/product/$_device/update*.md5sum' >> ~/Desktop/build.sh"
sh -c "echo '	;;' >> ~/Desktop/build.sh"
sh -c "echo ' 13) exit' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'esac' >> ~/Desktop/build.sh"
sh -c "echo '}' >> ~/Desktop/build.sh"
sh -c "echo '' >> ~/Desktop/build.sh"
sh -c "echo 'options_menu' >> ~/Desktop/build.sh"
chmod 775 ~/Desktop/build.sh
}
fi

echo
echo "Time to check your build in your Builds folder on your Desktop."
echo
