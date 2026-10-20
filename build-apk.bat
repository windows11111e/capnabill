@echo off
chcp 65001 >nul
echo === Capnabil: بناء APK ===
echo يتطلب: Node.js + JDK 17 + Android Studio (Android SDK)
call npm install || goto :err
call npm run setup || goto :err
call npm run apk || goto :err
echo.
echo تم! الملف: android\app\build\outputs\apk\debug\app-debug.apk
pause & exit /b 0
:err
echo حدث خطأ
pause
