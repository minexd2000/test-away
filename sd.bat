@echo off
:loop
for /l %%x in (3600,-1,1) do (
    cls
    echo Wait %%x seconds for the next execution.
    ping localhost -n 2 >nul
)
start "" echo "program has still running"
goto loop
