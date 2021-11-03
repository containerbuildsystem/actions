FROM fedora:34

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install nodejs npm && \
dnf clean all && \
npm install -g tekton-lint@v0.6.0

ENTRYPOINT ["tekton-lint"]
