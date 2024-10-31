FROM registry.fedoraproject.org/fedora:41

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
install nodejs npm && \
dnf clean all && \
npm install -g @ibm/tekton-lint@v1.0.0

ENTRYPOINT ["tekton-lint"]
