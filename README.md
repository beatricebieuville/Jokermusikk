# Jokermusikk

Arduino library for kids to program Attiny85 chips so that they create their own synth. Used in the makerspace Jokerspace in Vang (Norway). We use Sparkfun's Attiny programmer.

## Setting it up

1. Install AttinyCore in Arduino following [this guide](https://github.com/SpenceKonde/ATTinyCore/blob/master/Installation.md).

2. On Linux (we use linux Mint in Jokerspace): write custom udev rule. In the terminal, create the file called 99-USBisp.rules:

    `sudo nano /etc/udev/rules.d/99-USBisp.rules`

    Write this in the created file, save to file:

    `SUBSYSTEM=="usb", ATTR{product}=="FabISP", ATTR{idProduct}=="0c9f", ATTR{idVendor}=="1781", GROUP="dialout", MODE="0666"`

    Reload the rules:

    `sudo udevadm control --reload-rules`

3. Still on Linux: add user to "dialout" group:

    `sudo gpasswd -a [user] dialout`

    Log user out and in again.

4. Download the present library. Unzip it in your Arduino folder. Quit Arduino and open the app again. ow you can use the Jokermusikk library.
