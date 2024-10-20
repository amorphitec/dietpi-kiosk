# DietPi Kiosk

Configuration for dietpi to boot directly to Chromium in kiosk mode.

## Instructions

### 1. Flash a base image

1. Obtain a [DietPi image](https://dietpi.com/#download) for your device.
2. Flash the image to an SD card as per the [DietPi directions](https://dietpi.com/docs/install/).
3. Insert the SD card into a computer and note the filesystems mounted. _One will be a `boot` filesystem_.

### 2. Add kiosk configuration

1. Clone this repository.
2. Update `SOFTWARE_CHROMIUM_AUTOSTART_URL` in `dietpi.txt` to the required kiosk URL.
3. Replace `dietpi.txt` on the `boot` filesystem mounted in step 1.3 with the updated `dietpi.txt`.
4. Copy `Automation_Custom_Script.sh` to the `boot` filesystem.

### 3. Boot the image

_**Note:** currently a wired Internet connection is required._

1. Insert the SD card into a device with a wired network connection.
2. Power on the device.
3. The device will download and configure software required for kiosk mode.
4. The device will reboot to a kiosk open at the configured URL.
