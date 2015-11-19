#/bin/sh
cd "`dirname "$0"`"
cd ../robovm/cocoatouch
mvn clean install -Dmaven.test.skip=true
cd ../../robovm-maven-plugin
mvn clean install -Dmaven.test.skip=true
cd ../robovm-cocoatouch-test/ios
mvn compile robovm:iphone-sim