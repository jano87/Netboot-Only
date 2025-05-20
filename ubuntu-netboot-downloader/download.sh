#!/bin/bash

# Directory to store netboot files
TARGET_DIR="/srv/tftp/ubuntu-installer/amd64"

echo "📁 Creating target directory: $TARGET_DIR"
sudo mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit 1

echo "🌐 Downloading Ubuntu netboot kernel and initrd..."
sudo wget -nc http://archive.ubuntu.com/ubuntu/dists/focal/main/installer-amd64/current/legacy-images/netboot/ubuntu-installer/amd64/linux
sudo wget -nc http://archive.ubuntu.com/ubuntu/dists/focal/main/installer-amd64/current/legacy-images/netboot/ubuntu-installer/amd64/initrd.gz

echo "✅ Done. Netboot files are in: $TARGET_DIR"
