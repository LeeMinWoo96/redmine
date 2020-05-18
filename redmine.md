### Redmine on openshift

----

image : ~~bitnami/redmine:4.1.0-debian-10-r25~~ , midnightsnackerrr/redmine:4.0.6
- 변경이유: 플러그인 설치 스크립드까지 자동화


helm : v3

openshift : okd4


----

**현재 진행 사항**

- [x] scc 해제
- [x] PV 생성 및 마운트


**진행 예정**

- [x] plugin 추가
- [x] thema 추가


**체크 리스트**

- [x] ~~기존 Docker에서 사용하는 것과 같이 plugin 설치~~

redmine plugin을 적용하고 restart를 해야하는데 POD restrat 문제라 예상  

- [x] redmine 이미지를 새로 만들어 이미지내에 스크립드로 구성해두는 방법

- [x] InitContainer 를 이용해 차트를 수정하는 방법

- [x] Storageclass 안쓰고 pv 생성 후 진행 왜 안되는지


**주의 사항**

- plugin은 압축을 푼 후 뒤에 태그만 없애는 것이다 (꺼내는것 x, 꺼내면 아래와 같은 오류 출력)

- 내부 코드상 default 80 port

- privileged 권한 체크(scc 헤재 한 후 container의 securityContext에도 옵션을 줘야함)

![](./img/error.png)


- smtp 설정 중 535-5.7.8 username and password not accepted. learn more at 계정 정보가 정확한대 위와 같은 메시지가 출력된다면 구글 계정 -> 보안 -> 보안이 낮은 앱 엑세스를 허용



----


#### 참고자료

[plugin 추가 ](https://github.com/bitnami/charts/issues/1380)

[이미지 빌드](https://github.com/bitnami/bitnami-docker-redmine/issues/115)

[이미지 빌드2](https://brunch.co.kr/@cheuora/45)

[이미지 빌드 시 에러](https://github.com/bitnami/bitnami-docker-redmine/issues/101)