#!/bin/bash

set -ouex pipefail



dnf remove -y plasma-*

dnf copr enable -y ryanabx/cosmic-epoch
dnf install -y cosmic-desktop
dnf copr disable -y ryanabx/cosmic-epoch

wget "https://repo.protonvpn.com/fedora-$(cat /etc/fedora-release | cut -d' ' -f 3)-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.4-1.noarch.rpm"
dnf install -y ./protonvpn-stable-release-1.0.4-1.noarch.rpm


systemctl enable cosmic-greeter
systemctl enable podman.socket
