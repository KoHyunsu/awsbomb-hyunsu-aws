# awsbomb-hyunsu-aws

### 사용 방법 (윈도우 기준)
1. 본 프로젝트를 git clone 또는 다운로드 후 압축해제
2. https://github.com/rebuy-de/aws-nuke/releases 에 접속하여 Assets 내의 windows 전용 프로그램을 다운로드 받는다.
3. 다운로드 받은 파일의 압축을 해제하고, exe 파일명을 aws-nuke.exe로 수정한다. 
4. AWS초기화.bat이 포함된 폴더로 aws-nuke.exe를 옮긴다.
5. 설정.bat을 실행한다 (경고 무시하고 실행)
6. AWS초기화.bat을 실행한다 (경고 무시하고 실행)

<br/>

### CMD에서 수작업으로 진행 시 (윈도우 기준)
1. 본 프로젝트를 git clone 또는 다운로드 후 압축해제
2. https://github.com/rebuy-de/aws-nuke/releases 에 접속하여 Assets 내의 windows 전용 프로그램을 다운로드 받는다.
3. 다운로드 받은 파일의 압축을 해제하고, exe 파일명을 aws-nuke.exe로 수정한다. 
4. AWS초기화.bat이 포함된 폴더로 aws-nuke.exe를 옮긴다.
5. 4.와 동일한 폴더 내에 config.yml 생성 (예시 내용은 다음과 같다, us-east-1, ap-northeast-2, global 리전 기준)
```
# config.yml
regions: 
- us-east-1 
- ap-northeast-2 
- global 
account-blacklist: 
- "999999999999" 
accounts: 
  "본인 AWS 계정ID": {} 
```
5. aws 계정 정보 입력 (최초 한 번만)
- ```aws configure```
6.  account alias 생성 (최초 한 번만)
- ```aws iam create-account-alias --account-alias 원하는_ALIAS```
7. 리소스 일괄 삭제 (aws-nuke)
- ```aws-nuke.exe -c config.yml --no-dry-run```
