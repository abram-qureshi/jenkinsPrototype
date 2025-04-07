@echo off
echo Deploying to %1 environment...

IF "%1"=="staging" (
    copy main.py staging\
)

IF "%1"=="production" (
    copy main.py production\
)

echo Done.
