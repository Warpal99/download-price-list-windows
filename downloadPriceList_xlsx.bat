@echo off
setlocal enabledelayedexpansion

rem Token para validar la identidad del usuario
set "token=warpalsoporte@gmail.com" 

rem Ruta del directorio donde deseas guardar el archivo a descargar
set "downloadPath=c:\nb"

rem Nombre del archivo a descargar
set "fileName=priceList"

powershell -command "& { Invoke-WebRequest -Uri 'https://webapi.nb.com.ar/v1/priceListExcel/!token!' -OutFile '!downloadPath!!fileName!.xlsx' }"
echo Proceso terminado.
endlocal
