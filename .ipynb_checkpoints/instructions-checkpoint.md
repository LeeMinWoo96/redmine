
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

