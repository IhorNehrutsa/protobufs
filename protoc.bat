set SRC_DIR=meshtastic
set DST_DIR=%SRC_DIR%

if not exist %DST_DIR%_csharp_out  md %DST_DIR%_csharp_out
if not exist %DST_DIR%_python_out  md %DST_DIR%_python_out
if not exist %DST_DIR%_cpp_out     md %DST_DIR%_cpp_out

for %%f in (%SRC_DIR%\*.proto) do protoc.exe -I=%SRC_DIR% --csharp_out=%DST_DIR%_csharp_out %%f
for %%f in (%SRC_DIR%\*.proto) do protoc.exe -I=%SRC_DIR% --python_out=%DST_DIR%_python_out %%f

pause
