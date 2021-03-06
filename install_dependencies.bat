@echo off
if not exist "C:\Python34\python.exe" goto installpython
echo Python already installed.
goto installpygame

:installpython
echo Installing Python 3.6.4

SET downloadUrl=https://www.python.org/ftp/python/3.6.4/python-3.6.4.exe
SET tempFile=%cd%\.%random%-tmp

BITSADMIN /transfer /download %downloadUrl% %tempFile% >nul

start %tempFile%
del %tempFile%
goto installpygame

:installpygame
echo Installing pygame
python -m pip install pygame > null
goto installpy2exe

:installpy2exe
echo Installing py2exe
python -m pip install py2exe > null
goto end

:end
echo Finished.