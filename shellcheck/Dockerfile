FROM registry.fedoraproject.org/fedora:35

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install ShellCheck findutils file && \
dnf clean all

COPY action.sh /action/action.sh
ENTRYPOINT ["bash", "/action/action.sh"]
