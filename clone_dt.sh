#!/bin/bash

# Automatically set working directory based on where the script is run
WORKDIR="$PWD/InfinityX"

# Create the folder if it doesn't exist
mkdir -p "$WORKDIR"

# Move into the working directory
cd "$WORKDIR" || exit 1

echo "📁 Working directory: $WORKDIR"
echo "🚀 Starting to clone repositories..."

# ------------------------------
# Device trees
# ------------------------------
git clone https://github.com/Nothing-2A/android_device_nothing_Aerodactyl device/nothing/Aerodactyl
git clone https://github.com/Nothing-2A/android_device_nothing_Aerodactyl-kernel device/nothing/Aerodactyl-kernel

# ------------------------------
# Vendor trees
# ------------------------------
git clone https://gitlab.com/nothing-2a/proprietary_vendor_nothing_Aerodactyl.git vendor/nothing/Aerodactyl
git clone https://gitlab.com/nothing-2a/proprietary_vendor_nothing_Pacman.git vendor/nothing/Pacman
git clone https://gitlab.com/nothing-2a/proprietary_vendor_nothing_PacmanPro.git vendor/nothing/PacmanPro

# ------------------------------
# Hardware trees
# ------------------------------
git clone https://github.com/Nothing-2A/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy-vndr
git clone https://github.com/Nothing-2A/android_hardware_mediatek hardware/mediatek
git clone https://github.com/Nothing-2A/android_hardware_nothing hardware/nothing

echo "✅ All repositories cloned successfully!"
