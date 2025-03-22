@echo off

:: Needs to be run as administrator.
:: Make sure you don't quote the name, spaces are allowed.
SET AppName=Rider
 
echo Deleting file entries
@reg delete "HKEY_CLASSES_ROOT\*\shell\%AppName%"
 
echo Deleting within a folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\%AppName%"

echo Deleting folder entries
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\%AppName%"

pause