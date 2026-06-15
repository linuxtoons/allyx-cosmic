#!/bin/bash

set -ouex pipefail

### Install packages

dnf copr enable -y ryanabx/cosmic-epoch
dnf install -y cosmic-desktop
dnf copr disable -y ryanabx/cosmic-epoch

dnf remove -y plasma-desktop

#### Example for enabling a System Unit File

systemctl enable podman.socket
