### REDMINE 

![](./img/logo.PNG)

---

Redmine(http://redmine.org/)은 프로젝트의 할 일을 관리하는 도구이다. 할일이란 개발해야 할 새 기능, 수정해야 하는 결함, 문제가 된 이슈 등을 모두 포함한다. 최근에는 이 모든 것을 이슈(Issue)라고 통칭하고, Redmine과 같이 이슈를 관리하는 도구를 이슈 추적 시스템, 즉 Issue Tracking System(이하 ITS)이라 부른다. Red-mine 외에 Track, Mantis 등이 대표적인 오픈소스 도구이며, Atlassian의 Jira는 대표적인 상용도구이다.

---

#### 레드마인의 주요기능

- 여러개의 프로젝트 지원(트랙에선 사이트를 구분해야 가능하죠.)
- 유연한 역할에 기반한 접근 통제(계정 권한 설정이 유연하단 뜻)
- 유연한 이슈 트래킹 – 트랙과 매우 유사하고 좀더 편리합니다.
- 간트차트와 달력을 지원합니다.
- 뉴스, 문서, 파일관리 기본 지원
- atom rss, email 알림기능
- 프로젝트별 위키
- 프로젝트별 포럼(게시판)
- 변경이력(트랙의 시간이력)
- 이슈, 타임엔트리?, 프로젝트, 사용자를 위한 커스텀 필드를 지원
- 버전관리 시스템 연동 (SVN, CVS, Git, Mercurial, Bazaar and Darcs)
- 이메일을 통해 이슈를 만들수 있다.
- 다중 LDAP 인증을 지원
- 사용자 스스로 계정을 등록 할 수 있게 함
- 다언어 지원
- 다언어 데이터베이스 지원


----
이 repo 는
*Redmine을 okd 환경에 올리는 helm chart*


bitnamiHelmChart 의 경우 redmine 오리지널 helm차트 
docker-redmine-custom 의 경우 사용할 몇개의 플러그인을 설치한 redmine docker 파일
redmine-helm-chart 은 redmine 이미지를 쿠버네티스 환경에 올리기 위한 helm 차트(okd 환경)

---

#### 참고 사이트

[redmine 소개](https://racoonlotty.tistory.com/9)

