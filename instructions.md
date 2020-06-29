### 이미지 정보 
1. 현 repo의 docker-redmine 디렉토리는 semeerin님이 만드신 redmine 이미지에 5개의 plugin과 theme를 추가해 둔 Dockerfile임으로 빌드해서 사용하면 된다.

2. unicorn의 문제로 플러그인 다수를 동시에 진행할 수 없어 letency를 통해 순차적으로 진행하였다. 코드 정리는 안되어있는 상태임의로 타 플러그인을 적용하고 싶다면 entrypoint 를 수정해야한다. 

3. docker-redmine 폴더의 plugin 디렉토리의 plugin과 theme가 추가된 파일이다.


### helm chart 올리는법

1. openshift 환경시 scc.sh 실행 (scc 제한해제) **sh 파일에서 Namespace 이름이나 serviceAccount 명 확인**

2. Provisioner를 사용할 시 values.yaml 파일에서 storageClass 가 맞는지 확인, 사용하지 않을시 pv를 먼저 만듬(selector 사용 권장)

3. 차트설치 ```helm upgrade --install redmine customRedmine/ --values customRedmine/values.yaml -n redmine```

--------

### plugin install 방법

1. 마운트 된 로컬 디렉토리의 plugins 폴더에 plugin 파일을 압축 풀어둠

2. openshift 환경시엔 oc 명령 , 아닐땐 kubectl 명령으로 스크립트 실행 
   ex) oc exec -it pod_name redmine_install_plugins
  
  
**현재 설치된 플러그인과 버전**
  
![](./img/installedplugin.png)
  
-----------

### theme install 방법

1. 마운트 된 로컬 디렉토리의 theme 폴더에 압축 풀어돔

2. openshift 환경시엔 oc 명령 , 아닐땐 kubectl 명령으로 스크립트 실행 
  ex) oc exec -it pod_name redmine_install_themes
  
----------

### SMTP 설정 방법

*gmail 기준*

- 기본 value 값이 gmail로 설정 되어 있다 만약 gmail을 사용하지 않으려면 SMTP 관련 domain,host,port 설정 등을 변경해줘야 한다.

1. gmail 계정에 대한 정보를 설정해준다. 그리고 해당 구글 계정이 보안 정책을 낮춰야 한다. (구글 계정 -> 보안 -> 보안이 낮은 앱 엑세스를 허용)

[참고 doker image](https://github.com/sameersbn/docker-redmine)
