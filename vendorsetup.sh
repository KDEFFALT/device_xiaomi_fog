# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove included hardware_xiaomi and clone from lineage os
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Bengal HALs
git clone https://github.com/PixelExperience-Staging/hardware_qcom-caf_bengal_display hardware/qcom-caf/bengal/display 
git clone https://github.com/PixelExperience-Staging/hardware_qcom-caf_bengal_audio hardware/qcom-caf/bengal/audio 
git clone https://github.com/PixelExperience-Staging/hardware_qcom-caf_bengal_gps hardware/qcom-caf/bengal/gps
git clone https://github.com/PixelExperience-Staging/hardware_qcom-caf_bengal_media hardware/qcom-caf/bengal/media

# Kernel Sources
git clone https://github.com/KDEFFALT/fog-kernel -b artifact-r2 kernel/xiaomi/fog

# Vendor Sources
git clone https://github.com/KDEFFALT/vendor_xiaomi_fog -b fourteen vendor/xiaomi/fog
echo -e "${color}Finished sync!${end}"
