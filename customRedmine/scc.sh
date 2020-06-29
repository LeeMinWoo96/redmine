oc adm  policy add-scc-to-user anyuid system:serviceaccount:redmine:redmine
oc adm  policy add-scc-to-user anyuid system:serviceaccount:redmine:default

oc adm  policy add-scc-to-user privileged system:serviceaccount:redmine:redmine
oc adm  policy add-scc-to-user privileged system:serviceaccount:redmine:default

