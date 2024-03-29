:: you dont need to understand this, its js for simplicity

@echo off
set SRC_DIR=src
set BUILD_DIR=build

@REM gcc -o %BUILD_DIR%\boogerAids %SRC_DIR%\main.c -I%SRC_DIR% -m64 -D_WIN64
x86_64-w64-mingw32-gcc -o %BUILD_DIR%\boogerAids %SRC_DIR%\main.c -lkernel32 -luser32 -lshell32 -I%SRC_DIR%

if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b %errorlevel%
)

echo Compilation successful.