FROM registry.fedoraproject.org/fedora:34

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install python3-pip python3-setuptools python3-wheel python3-devel git gcc-c++ && \
dnf clean all && \
pip3 --no-cache-dir install pytype

ENTRYPOINT ["pytype", "-d",  "import-error"]
