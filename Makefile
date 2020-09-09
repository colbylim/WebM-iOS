all : WebM-iOS.zip

clean :
	rm -f WebM-iOS.zip
	rm -rf WebM-iOS
	rm -rf libvpx/framework

WebM-iOS.zip : WebM-iOS/VPX.framework/VPX
	rm -f WebM-iOS.zip
	zip -r WebM-iOS.zip \
	  WebM-iOS/LICENSE \
		WebM-iOS/PATENTS \
	  WebM-iOS/VPX.framework

WebM-iOS/VPX.framework/VPX :
	rm -rf WebM-iOS
	mkdir WebM-iOS
	cp -pf libvpx/LICENSE WebM-iOS/LICENSE
	cp -pf libvpx/PATENTS WebM-iOS/PATENTS
	rm -rf libvpx/framework
	(cd libvpx/build/make && ./iosbuild.sh --enable-shared --show-build-output --verbose)
	cp -prf VPX.framework WebM-iOS
