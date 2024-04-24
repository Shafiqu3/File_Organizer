@echo off

rem This script sorts files into folders based on their extension.

for %%a in (*.*) do (
  if "%%~xa" NEQ "" (  
    if not exist "%%~xa" mkdir "%%~xa" (
      move "%%a" "%%~dpa%%~xa\" 
    )
  )
)

echo Done sorting files!

pause
