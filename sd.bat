@echo off
:loop
for /l %%x in (31536000,-1,1) do (
    cls
    echo Wait %%x seconds for the next execution.
    ping localhost -n 2 >nul
)
start "" echo "end.bat"
exit
