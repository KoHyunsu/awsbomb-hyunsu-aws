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
set /p YN=aws cli�� ��ġ�ϼ̳���?(Y/N) : 
if /i "%YN%"=="y" goto YES
if /i "%YN%"=="n" goto NO
goto LOOP
:NO
echo aws cli ��ġ�� �����մϴ�...
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi /qn
goto YES

:YES
echo.
echo.
echo.
echo ==================================================
echo aws iam
echo ==================================================
set /p alias=���Ͻô� �ڽŸ��� ��Ī�� �Է��ϼ��� (�̹� �Է��ߴٸ� ��ĭ Enter) : 
IF "%alias%"=="" GOTO Config
aws iam create-account-alias --account-alias %alias% 

:Config
echo.
echo.
echo.
echo ==================================================
echo aws configure
echo ==================================================
echo (aws configure ������ �̹� �Է��ߴٸ� ��ĭ Enter)
aws configure

echo.
echo.
echo.
echo ==================================================
echo ���� ID �Է�
echo ==================================================
set /p alias=������ ���� ID�� �Է��ϼ��� :
echo regions: > config.yml
echo - us-east-1 >> config.yml
echo - ap-northeast-2 >> config.yml
echo - global >> config.yml
echo account-blacklist: >> config.yml
echo - "999999999999" >> config.yml
echo accounts: >> config.yml
echo   "%alias%": {} >> config.yml
echo config.yml�� �����Ǿ����ϴ�. (�����Ͼ� �Ϻ�, ����, �۷ι� ���� ����)

echo.
echo.
echo.
echo ��� ������ �Ϸ�Ǿ����ϴ�.
pause