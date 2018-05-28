#!/sbin/sh

sku=`getprop ro.product.model`

if [ "$sku" = "LG-K420ds" ]; then
    # LG-K420DS doesn't have NFC chip
    rm /system/etc/permissions/android.hardware.nfc.xml
    rm /system/etc/permissions/android.hardware.nfc.hce.xml
    rm -r /system/app/NfcNci
fi
