FROM registry.fedoraproject.org/fedora:34

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install python3-pip python3-setuptools python3-wheel git; \
pip3 install "ansible-lint[community,yamllint]" "ansible>=2.10,<2.11"

ENTRYPOINT ["ansible-lint"]
