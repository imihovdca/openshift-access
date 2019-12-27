
FROM openshift/origin-base

MAINTAINER Ivan Mihov

LABEL io.k8s.description="Provide Access to file sysyem" \
      io.k8s.display-name="OpenShift Access" \
      io.openshift.tags="openshift,access"

RUN yum install -y git \
 && yum install -y sftp \
 && yum clean all

EXPOSE 8080

CMD [ "tail", "-f", "/dev/null" ]
