FROM registry.fedoraproject.org/fedora:35

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install ruby rubygems git && \
dnf clean all && \
gem install mdl:'>=0.11.0'

COPY action.sh /action/action.sh
ENTRYPOINT ["bash", "/action/action.sh"]
