# Money Mate (Android app)

Money Mate is a web app wrapped as an Android app with Capacitor. All data stays on the phone (offline, no account).
The app files are in `www/`. Fonts and the Excel library are bundled, so it works without internet.

## Get the APK without installing anything (GitHub)
1. Create a new GitHub repository and upload everything in this folder (keep the `.github` folder).
2. Open the repository's **Actions** tab, choose **Build Money Mate APK**, and press **Run workflow**.
3. When it finishes (about 5 minutes), open the run and download **MoneyMate-APK**. Unzip it to get `app-debug.apk`.
4. Copy the APK to your phone and open it. Allow "Install unknown apps" for your file manager or browser when asked.

## Build on your own computer
You need Node 18+, Java 17+ and the Android SDK (Android Studio installs it and sets `ANDROID_HOME`).
```
./build-apk.sh
```
The APK is written to `dist/MoneyMate.apk`.

## Notes
- This is a debug-signed APK. It installs and runs normally. It cannot be uploaded to the Play Store as is.
- Updating: install a newer APK over the old one and your data is kept. Uninstalling the app deletes its data, so export to Excel first.
- Excel export opens the Android share sheet, where you choose Files, Drive, WhatsApp and so on.
- SIP auto-debits are recorded when you open the app on or after the debit date.
