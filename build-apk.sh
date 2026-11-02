#!/usr/bin/env bash
# Builds an installable debug APK. Needs: Node 18+, Java 17+, and the Android SDK (ANDROID_HOME set).
set -euo pipefail
cd "$(dirname "$0")"
if [ -z "${ANDROID_HOME:-}${ANDROID_SDK_ROOT:-}" ]; then
  echo "Set ANDROID_HOME to your Android SDK folder (Android Studio installs one)." >&2; exit 1
fi
npm install
[ -d android ] || npx cap add android
npm run icons
npx cap sync android
(cd android && ./gradlew assembleDebug)
mkdir -p dist
cp android/app/build/outputs/apk/debug/app-debug.apk dist/MoneyMate.apk
echo "Done: $(pwd)/dist/MoneyMate.apk"
