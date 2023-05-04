for /F %%F in ('dir /b meshtastic\*.options') do "c:\Program Files\LLVM\bin\clang-format.exe" -i meshtastic\%%F
for /F %%F in ('dir /b meshtastic\*.proto') do "c:\Program Files\LLVM\bin\clang-format.exe" -i meshtastic\%%F
pause
