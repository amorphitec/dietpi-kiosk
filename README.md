# DietPi Kiosk

Configuration for dietpi to boot directly to Chromium in kiosk mode.

## Instructions

### 1. Flash a base image

1. Obtain a [DietPi image](https://dietpi.com/#download) for your device.
2. Flash the image to an SD card as per the [DietPi directions](https://dietpi.com/docs/install/).
3. Insert the SD card into a computer and note the filesystems mounted. _One will be a `boot` filesystem_.

### 2. Add kiosk configuration

1. Clone this repository.
2. Update the `SOFTWARE_CHROMIUM` variables in `dietpi.txt` as required:
    - `SOFTWARE_CHROMIUM_AUTOSTART_URL`: the kiosk URL to load on boot
    - `SOFTWARE_CHROMIUM_RES_X`: the x resolution of the kiosk screen
    - `SOFTWARE_CHROMIUM_RES_Y`: the y resolution of the kiosk screen
3. Replace `dietpi.txt` on the `boot` filesystem mounted in step 1.3 with the updated `dietpi.txt`.
4. Copy `Automation_Custom_Script.sh` to the `boot` filesystem.

### 3. Boot the image

_**Note:** currently a wired Internet connection is required._

1. Insert the SD card into a device with a wired network connection.
2. Power on the device.
3. The device will download and configure software required for kiosk mode.
4. The device will reboot to a kiosk open at the configured URL.

## Distributing a kiosk image

To duplicate the image for distribution, use the `dietpi-imager` script as per the [dietpi docs](https://dietpi.com/docs/hardware/#script-execution):

1. Insert the SD card into a Linux host.
2. Run the `dietpi-imager` script:

    ```
    sudo G_GITOWNER=MichaIng G_GITBRANCH=master bash -c "$(curl -sSfL 'https://raw.githubusercontent.com/MichaIng/DietPi/master/.build/images/dietpi-imager')"
    ```
3. Follow the prompts.
4. Both `.img` (image) and `.img.xz` (compressed image) files will be created.
