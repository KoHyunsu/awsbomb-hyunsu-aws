@echo off
setlocal
echo Author : Hyunsu Ko
echo Updated : 2022.03.30
echo.
echo.
echo.

echo ==================================================
echo aws cli
echo ==================================================
:LOOP
set /p YN=aws cli를 설치하셨나요?(Y/N) : 
if /i "%YN%"=="y" goto YES
if /i "%YN%"=="n" goto NO
goto LOOP
:NO
echo aws cli 설치를 진행합니다...
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi /qn
goto YES

:YES
echo.
echo.
echo.
echo ==================================================
echo aws iam
echo ==================================================
set /p alias=원하시는 자신만의 별칭을 입력하세요 (이미 입력했다면 빈칸 Enter) : 
IF "%alias%"=="" GOTO Config
aws iam create-account-alias --account-alias %alias% 

:Config
echo.
echo.
echo.
echo ==================================================
echo aws configure
echo ==================================================
echo (aws configure 설정을 이미 입력했다면 빈칸 Enter)
aws configure

echo.
echo.
echo.
echo ==================================================
echo 계정 ID 입력
echo ==================================================
set /p alias=본인의 계정 ID를 입력하세요 :
echo regions: > config.yml
echo - us-east-1 >> config.yml
echo - ap-northeast-2 >> config.yml
echo - global >> config.yml
echo account-blacklist: >> config.yml
echo - "999999999999" >> config.yml
echo accounts: >> config.yml
echo   "%alias%": {} >> config.yml
echo config.yml이 설정되었습니다. (버지니아 북부, 서울, 글로벌 리전 기준)

echo.
echo.
echo.
echo 모든 설정이 완료되었습니다.
pause