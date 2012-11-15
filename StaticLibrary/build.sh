#!/bin/bash
projectName="StaticLibrary"

rm -rf "lib"
mkdir -p "lib"
xcodebuild -project "$projectName.xcodeproj" -configuration Release -target "$projectName" -arch "armv7 armv7s" -sdk iphoneos6.0 build || exit $?
mv "lib/lib$projectName.a" "lib/lib$projectName-arm.a"
xcodebuild -project "$projectName.xcodeproj" -configuration Release -target "$projectName" -arch i386 -sdk iphonesimulator6.0 build || exit $?
mv "lib/lib$projectName.a" "lib/lib$projectName-simulator.a"

lipo -output "lib/lib$projectName.a" -create "lib/lib$projectName-arm.a" "lib/lib$projectName-simulator.a"
rm "lib/lib$projectName-arm.a"
rm "lib/lib$projectName-simulator.a"

rm -rf build