oc adm  policy add-scc-to-user anyuid system:serviceaccount:test-redmine:redmine
oc adm  policy add-scc-to-user anyuid system:serviceaccount:test-redmine:default

oc adm  policy add-scc-to-user privileged system:serviceaccount:test-redmine:redmine
oc adm  policy add-scc-to-user privileged system:serviceaccount:test-redmine:default

