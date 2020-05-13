echo off
cls
echo Bootsector Helth Checker
date /t
time /t

if %1 == trust goto trust
if %1 == check goto check
if %1 == recover goto recover
echo =============================
echo No option has been specified.
echo =============================
goto end

:trust
secinspect -backup PhysicalDrive0 trust.dsk 0 1
echo trust file is created.
goto end

:check
secinspect -backup PhysicalDrive0 check.dsk 0 1
fc /b trust.dsk check.dsk > nul
if errorlevel 1 goto files_differ

echo ===============================
echo Your boot sector apears healthy
echo ===============================
goto end

:recover
secinspect -restore PhysicalDrive0 trust.dsk 0
goto end

:files_differ
echo ======================================
echo Your boot sector has been compromised.
echo ======================================

:end
