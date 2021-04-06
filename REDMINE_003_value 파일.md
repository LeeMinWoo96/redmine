*작성자: 이민우*<br>
*작성일: 20210330*<br>
*문서 목적 : 인프라 (REDMINE) 인수인계*<br>

----
value.yaml
```
image:
  #repository: sameersbn/redmine:4.1.1-2
  #repository: midnightsnackerrr/redmine:4.0.6
  repository: dlworl207/redmine
  #pullPolicy: IfNotPresent
  pullPolicy: Always
imagePullSecrets: []

replicas: 1

serviceAccount:
  # Specifies whether a service account should be created
  create: true
  # The name of the service account to use.
  # If not set and create is true, a name is generated using the fullname template
  name: redmine


securityContext:
  enabled: true
  fsGroup: 1001
  runAsUser: 1001 
  privileged: true

port: 80

https: false

sudo_mode:
  enabled: "false"
  timeout: 15

git:
  persistence:
    storageClass : "nfs-client" 

persistence:
  enabled: true
  ## A manually manage Persistent Volume Claim
  ## Requires persistence.enable: true
  ## If defined, PVC must be created manually before volume will be bound
  # existingClaim:

  ## redmine data Persistent Volume Storage Class
  ## If defined, storageClassName: <storageClass>
  ## If set to "-", storageClassName: "", which disables dynamic provisioning
  ## If undefined (the default) or set to null, no storageClassName spec is
  ##   set, choosing the default provisioner.  (gp2 on AWS, standard on
  ##   GKE, AWS & OpenStack)
  ##
  storageClass: ""
  accessMode: ReadWriteOnce
  size: 8Gi
  selector: 
    matchLabels:
      app: redmine

postgresql:

  ## Set to false if bringing your own PostgreSQL.
  enabled: false
  image: sameersbn/postgresql:9.6-4
  host: 192.168.1.6
  postgresqlDatabase: redmine
  postgresqlUsername: postgres
  ##
  ## If the password is not specified, postgresql will generate a random password
  postgresqlPassword: nsc2006
  port: "5432"
  persistence:
    enabled: false
    pvcName: redmine-psql
    storageClass: "nfs-client"
    accessMode: ReadWriteOnce
    size: 8Gi
    


service:
  type: ClusterIP
  port: 80

resources: {}
  # We usually recommend not to specify default resources and to leave this as a conscious
  # choice for the user. This also increases chances charts run on environments with little
  # resources, such as Minikube. If you do want to specify resources, uncomment the following
  # lines, adjust them as necessary, and remove the curly braces after 'resources:'.
  # limits:
  #   cpu: 100m
  #   memory: 128Mi
  # requests:
  #   cpu: 100m
  #   memory: 128Mi


smtp:
  enabled: "true"
  method: smtp
  domain: www.goole.com
  host: smtp.gmail.com
  port: "587"
  user: redmine.northstar@gmail.com
  password: "!!aibig$$2020"
  starttls: "true"
  authentication: ":login"
  
imap:
  enabled: "false"
  host: iamp.gmail.com
  port: "993"
  user: asd@gmail.com
  password: asd
  ssl: "true"
  interval: "30" 
```