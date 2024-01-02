# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Kernel Sources
git clone https://github.com/KDEFFALT/fog-kernel -b ArtifactOSS kernel/xiaomi/fog

# Bengal HALs
git clone https://github.com/KDEFFALT/hardware_qcom-caf_bengal -b eleven hardware/qcom-caf/bengal

# Vendor Sources
git clone https://github.com/KDEFFALT/vendor_xiaomi_fog -b eleven vendor/xiaomi/fog

echo -e "${color}Finished sync!${end}"