FROM fedora:32

RUN dnf -y --nodocs  --setopt=install_weak_deps=False \
--disablerepo=fedora-cisco-openh264 \
--disablerepo=fedora-modular \
--disablerepo=updates-modular \
install python3-flake8

ENTRYPOINT ["flake8"]
CMD ["--max-line-length=100"]
