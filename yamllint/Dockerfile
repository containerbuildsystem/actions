FROM registry.fedoraproject.org/fedora:35

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install yamllint && \
dnf clean all

ENTRYPOINT ["yamllint", "-s", "-f", "github", "-d", "{extends: default, rules: {line-length: {max: 100}}}"]
