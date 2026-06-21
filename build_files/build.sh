#!/bin/bash

set -ouex pipefail



dnf remove -y gnome-*

dnf copr enable -y ryanabx/cosmic-epoch
dnf install -y cosmic-desktop
dnf copr disable -y ryanabx/cosmic-epoch



systemctl enable cosmic-greeter
systemctl enable podman.socket
