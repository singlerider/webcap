#!/usr/bin/env bash
# chromium-browser on ubuntu-24.04 is a snap shim that fails to install. The image ships Chrome, but AppArmor
# blocks the unprivileged user namespaces its sandbox needs.
set -euo pipefail
sudo apt-get update
sudo apt-get install -y tesseract-ocr
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
