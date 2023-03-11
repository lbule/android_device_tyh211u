#!/system/bin/sh

load()
{
        mkdir /v
        mount -t ext4 -o ro /dev/block/by-name/socko /v
        mkdir -p /vendor/lib/modules
        cp /v/synaptics_dsx_td4310.ko /vendor/lib/modules/synaptics_dsx_td4310.ko
        cp /v/synaptics_td4320_spi_ts.ko /vendor/lib/modules/synaptics_td4320_spi_ts.ko
        insmod /vendor/lib/modules/synaptics_dsx_td4310.ko
        insmod /vendor/lib/modules/synaptics_td4320_spi_ts.ko
        umount /v
        rmdir /v
}

load
wait 1

setprop modules.loaded 1

exit 0
