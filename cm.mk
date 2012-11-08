PRODUCT_RELEASE_NAME := PARODUDE

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/marvel/device_marvel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvel
PRODUCT_NAME := pa_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S
PRODUCT_MANUFACTURER := HTC
PRODUCT_VERSION_DEVICE_RELEASE := ALPHA2
PRODUCT_VERSION_DEVICE_SPECIFIC := -PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

# CM_RELEASE := true
CM_BUILDTYPE := UNOFFICIAL
CM_EXTRAVERSION := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

BUILD_ID := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)-$(shell date -u +%d)-$(shell date -u +%m)-$(shell date -u +%Y)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cm/htc_marvel/marvel:4.1.1/$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="0.1 PARODUDE release-keys"

# GooManager Stuffs
PRODUCT_PROPERTY_OVERRIDES := \
    ro.goo.developerid=dudeman1996 \
    ro.goo.rom=marvel_paranoidandroid \
    ro.goo.board=marvel \
    ro.goo.version=6
PRODUCT_COPY_FILES += \
    device/htc/marvel_pa/app/GooManager.apk:/system/app/GooManager.apk

# ROM Manager Stuffs
PRODUCT_PROPERTY_OVERRIDES := \
    ro.rommanager.developerid=dudeman1996

# Make Dalvik Cache work properly
PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=unknown \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.ril.enable.dtm=1 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsupa.category=5 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
    ro.ril.def.agps.mode=2 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=12 \
    ro.telephony.ril.v3=signalstrength,skipbrokendatacall \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2,gprs,ppp0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \
    debug.sf.hw=1 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    debug.hwui.render_dirty_regions=false \
    debug.enabletr=false \
    debug.composition.type=gpu \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.camcorder.disablemeta=1 \
    ro.phone_storage=0 \
    settings.display.autobacklight=1 \
    settings.display.brightness=143 \
    persist.service.mount.playsnd=0 \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    dalvik.vm.dexopt-flags=m=y \
    ro.config.sync=yes \
    persist.sys.usb.config=mass_storage,adb \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=128m \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=1 \
    ro.htc.camerahack=msm7k \
    ro.telephony.default_network=0 \
    net.bt.name=Android \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt
