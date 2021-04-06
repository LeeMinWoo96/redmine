*작성자: 이민우*<br>
*작성일: 20210330*<br>
*문서 목적 : 인프라 (REDMINE) 인수인계*<br>

----

### REDMINE

- 레드마인(Redmine)은 오픈소스 프로그램으로 웹 기반의 프로젝트 관리 와 버그 추적 기능을 제공하는 도구이다. 

**특징**

    * 다중 프로젝트 지원
    * 유연한 역할기반 접근제어 (유연한 계정권한 설정)
    * 유연한 이슈 트래킹
    * 간트 차트와 달력기능 제공
    * 알림, 문서, 파일관리기능 제공
    * atom rss, 이메일 알람기능
    * 프로젝트별 위키 페이지 제공
    * 프로젝트별 게시판 기능 제공
    * 변경이력 제공 (Trac-시간이력)
    * 형상 관리 소프트웨어와 연동(SVN, CVS, Git, Mercurial, Bazaar, Darcs)
    * 다중 LDAP 기반 인증 지원
    * 다국어지원
    * 다언어 지원, 다언어 데이터베이스 지원
    * 플러그인 기능 지원
    * 관련 모바일 앱

---

#### 접속 정보
레드마인 url : <http://redmine.aibigdata.northstar.co.kr/> <br>
설치 OKD url : <https://console-openshift-console.apps.okd4.northstar.co.kr/k8s/ns/redmine/pods> <br>



#### 설치를 위한 선수 지식

1. Docker <br>
2. Kubernetes <br>
3. Helm <br>

*Helm* <br>
Helm 은 쿠버네티스 package managing tool 이다. node.js 의 npm 과 비슷한 형태로 쿠버네티스 패키지 배포를 가능하게 하는 tool 이라고 보면 된다.

helm 은 파트가고 명칭하는데 차트는 리소르를 하나로 묶은 패키지에 해당된다.

*현재 v3 버전을 사용합니다.*

HELM 설치 가이드 : <http://redmine.aibigdata.northstar.co.kr/boards/3/topics/14>

---

1. jupyter hub(OKD 와 연결 될 수 있는 환경) 접속 후 oc login 
2. Project 를 변경하여 HELM 을 통해 설치되어있는 차트 확인 
![레드마인](./img/redmine_1.jpg)


*레드마인 HELM 차트 구조*
```
.
├── redminecustom
│   ├── Chart.yaml
│   ├── redmine-board-pv.yaml
│   ├── redmine-pv.yaml
│   ├── templates
│   │   ├── db_service.yaml
│   │   ├── deployment.yaml
│   │   ├── pvc_db.yaml
│   │   ├── pvc_redmine_board.yaml
│   │   ├── pvc_redmine_git.yaml
│   │   ├── pvc_redmine.yaml
│   │   ├── rm_service.yaml
│   │   ├── secrets.yaml
│   │   ├── serviceaccount.yaml
│   │   └── statefulset.yaml
│   └── values.yaml
├── scc.sh
└── testscc.sh
```