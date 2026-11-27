#!/bin/bash
# يتطلب: Node 18+ و JDK 17 و Android SDK (ANDROID_HOME)
set -e
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android && ./gradlew assembleDebug
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
