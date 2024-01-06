# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove prebuilt Launcher3 and replace with fixed one
rm -rf packages/apps/Launcher3
git clone https://github.com/ClownUI/packages_apps_Launcher3 -b tiramisu-qpr3 packages/apps/Launcher3

# Remove included hardware_xiaomi
rm -rf hardware/xiaomi

# clone lineage os hardware_xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Kernel Sources
git clone https://github.com/KDEFFALT/fog-kernel -b ArtifactOSS kernel/xiaomi/fog

# Bengal HALs
git clone https://github.com/KDEFFALT/hardware_qcom-caf_bengal -b thirteen hardware/qcom-caf/bengal

# Vendor Sources
git clone https://github.com/KDEFFALT/vendor_xiaomi_fog -b thirteen vendor/xiaomi/fog

echo -e "${color}Finished sync!${end}"
