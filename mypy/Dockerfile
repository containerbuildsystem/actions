FROM registry.fedoraproject.org/fedora:41

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install python3-mypy python3-pip python3-setuptools && \
dnf clean all

ENTRYPOINT ["mypy", "--install-types", "--non-interactive", "--ignore-missing-imports", "--package"]
