#!/bin/bash
# Created by Victor Oliveira on 09/08/21.
# Copyright © 2021 Tempest. All rights reserved.

set -e

xcodebuild archive -project teste.xcodeproj -scheme teste -archivePath test-simulator.xcarchive -sdk iphonesimulator SKIP_INSTALL=NO

xcodebuild archive -project teste.xcodeproj -scheme teste -archivePath test-ios.xcarchive -sdk iphoneos SKIP_INSTALL=NO

xcodebuild -create-xcframework -framework test-simulator.xcarchive/Products/Library/Frameworks/teste.framework -framework test-ios.xcarchive/Products/Library/Frameworks/teste.framework -output test.xcframework