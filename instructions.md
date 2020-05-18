
기본 쿠버네티스 환경이 구축되어있다고 가정

1 openshift 환경시 scc.sh 실행 (scc 제한해제)

2 provisoner가 있을 시 helm install 없다면 pv를 생성하여 pvc와 연결 후 install

--------

plugin install

1 마운트 된 로컬 디렉토리의 plugins 폴더에 plugin 파일을 압축 풀어둠

2 openshift 환경시엔 oc 명령 , 아닐땐 kubectl 명령으로 스크립트 실행 
  ex) oc exec -it pod_name redmine_plugins 
  
-----------

