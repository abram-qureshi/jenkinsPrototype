@echo off
echo Deploying to %1 environment...

IF "%1"=="staging" (
    if not exist staging (
        mkdir staging
    )
    copy main.py staging\
)

IF "%1"=="production" (
    if not exist production (
        mkdir production
    )
    copy main.py production\
)

echo Done.
