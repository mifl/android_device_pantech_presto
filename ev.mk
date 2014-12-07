## Specify phone tech before including full_phone
$(call inherit-product, vendor/ev/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := presto

# Inherit some common EV stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/presto/full_presto.mk)

# Boot animation
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ev_presto
PRODUCT_DEVICE := presto
PRODUCT_BRAND := ATT
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := PantechP9070

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=PantechP9070 TARGET_DEVICE=PantechP9070 BUILD_FINGERPRINT="ATT/PantechP9070/presto:4.0.4/IMM76I/presto_0903:user/release-keys" PRIVATE_BUILD_DESC="Pantech Presto P9070 release-keys"
