@ECHO ON

SET LOC_PATH=%CD%
SET FILES=%LOC_PATH%\libcdio_d.txt

CALL dlextract.bat libcdio %FILES%

cd %TMP_PATH%

xcopy libcdio-0.81-win32\include\* "%CUR_PATH%\include\" /E /Q /I /Y
copy libcdio-0.81-win32\lib\libcdio.lib "%CUR_PATH%\lib\" /Y
copy libcdio-0.81-win32\lib\libcdio-10.dll "%XBMC_PATH%\project\Win32BuildSetup\dependencies\" /Y

rem for debugging
copy libcdio-0.81-win32\lib\libcdio-10.dll "%XBMC_PATH%\project\VS2010Express\XBMC\Debug (DirectX)\" /Y

cd %LOC_PATH%
