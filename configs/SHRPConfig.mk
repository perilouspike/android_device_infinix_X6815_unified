####################################################################
# SHRP stuffs - specific lines                                     #                        
####################################################################
# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC).


# Mandatory flags

# Path of your SHRP Tree *
SHRP_PATH := device/infinix/X8615
# Maintainer name *
SHRP_MAINTAINER := perilouspike
# Device codename *
SHRP_DEVICE_CODE := X8615/X6815B
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A/B
# Use this flag only if your device is A/B or Virtual A/B.
SHRP_AB := true

#Important flags

# Storage paths, put your device's storage paths from fstab *
SHRP_INTERNAL := /sdcard
# External SDcard path
SHRP_EXTERNAL := /external_sd
# USB OTG path
SHRP_OTG := /usb_otg
# Put 0 to disable flashlight *
SHRP_FLASH := 1

# SHRP padding flag (for rounded corner devices only). You have to change these values according to your device's roundness.
SHRP_STATUSBAR_RIGHT_PADDING := 48
SHRP_STATUSBAR_LEFT_PADDING := 48
# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock [Optional]
SHRP_EXPRESS := true
# SHRP Express use Data save shrp files inside /data instead of /system
SHRP_EXPRESS_USE_DATA := true
# Max Brightness of LED [Optional]
#SHRP_FLASH_MAX_BRIGHTNESS := 200
# Custom led paths for flashlight
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/torch/torch/torch_level