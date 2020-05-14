oc adm  policy add-scc-to-user anyuid system:serviceaccount:redmine-custom:redmine
oc adm  policy add-scc-to-user anyuid system:serviceaccount:redmine-custom:default

oc adm  policy add-scc-to-user privileged system:serviceaccount:redmine-custom:redmine
oc adm  policy add-scc-to-user privileged system:serviceaccount:redmine-custom:default

