@echo off
echo === Capnabil: building APK ===
echo Requires: Node.js + JDK 17 + Android SDK (Android Studio)
call npm install
if errorlevel 1 goto err
call npm run setup
if errorlevel 1 goto err
call npm run apk
if errorlevel 1 goto err
echo.
echo Done! File: android\app\build\outputs\apk\debug\app-debug.apk
pause
exit /b 0
:err
echo Build failed. Send me a photo of the error.
pause
exit /b 1
