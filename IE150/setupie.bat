@echo off
set SRC=%tmp%\
if NOT exist %SRC%install.exe goto TryTemp
if NOT exist %SRC%internet.stf goto TryTemp
if NOT exist %SRC%internet.inf goto TryTemp
if NOT exist %SRC%basic.dll goto TryTemp
if NOT exist %SRC%intersu.dll goto TryTemp
if NOT exist %SRC%iexplore.exe goto TryTemp
goto noargs

:TryTemp
set SRC=%temp%\
goto noargs

:TryCwd
set SRC=%1%
if NOT exist %SRC%install.exe goto Error
if NOT exist %SRC%internet.stf goto Error
if NOT exist %SRC%internet.inf goto Error
if NOT exist %SRC%basic.dll goto Error
if NOT exist %SRC%intersu.dll goto Error
if NOT exist %SRC%iexplore.exe goto Error
goto noargs

:Error
echo .
echo IExplore setup error:
echo   You must specify the directory where installing from
echo .
echo   EXAMPLE:
echo     %0 %SRC% (default)
echo .
pause
goto end

:noargs
%SRC%install.exe 
:end
set SRC=
