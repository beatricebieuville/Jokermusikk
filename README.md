# Jokermusikk

Arduino library for kids to program Attiny85 chips so that they create their own synth. Used in the makerspace Jokerspace in Vang (Norway). We use Sparkfus's Attiny programmer.

## Setting it up

1. Install AttinyCore in Arduino following [this guide](https://github.com/SpenceKonde/ATTinyCore/blob/master/Installation.md).

2. On Linux (we use linux Mint in Jokerspace): write custom udev rule. In the terminal:
    sudo nano /etc/udev/rules.d/99-USBisp.rules
    SUBSYSTEM=="usb", ATTR{product}=="FabISP", ATTR{idProduct}=="0c9f", ATTR{idVendor}=="1781", GROUP="dialout", MODE="0666"
    sudo udevadm control --reload-rules

3. Still on Linux: add user to "dialout" group:
    sudo gpasswd -a [user] dialout
Log user out and in again.
