set SRC_DIR=protobufs\meshtastic
set DST_DIR=%SRC_DIR%

cd ..

if not exist %DST_DIR%_csharp_out  md %DST_DIR%_csharp_out
if not exist %DST_DIR%_python_out  md %DST_DIR%_python_out

for %%f in (%SRC_DIR%\*.proto) do protobufs\protoc.exe -I=protobufs --csharp_out=%DST_DIR%_csharp_out %%f
for %%f in (%SRC_DIR%\*.proto) do protobufs\protoc.exe -I=protobufs --python_out=%DST_DIR%_python_out %%f

pause
