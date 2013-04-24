#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# name
PRODUCT_RELEASE_NAME := i9300

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_i9300

# device
$(call inherit-product-if-exists, device/samsung/i9300/full_i9300.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# gsm
$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# products
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := Samsung
PRODUCT_NAME := carbon_i9300
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.i9300.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=533553 \
    PRODUCT_NAME=m0xx \
    TARGET_DEVICE=m0 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="m0xx-user 4.1.1 JRO03C I9300XXDLIB release-keys" \
    BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.1/JRO03C/I9300XXDLIB:user/release-keys"
