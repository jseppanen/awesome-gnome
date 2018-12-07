# i3-gnome
Use i3 with GNOME Session integration for Ubuntu 18.04

## Dependencies
This repo creates a new session in GMD3 called "i3 + Gnome". The requirements are gnome-flashback and i3.

```
apt install -y i3 gnome-flashback
```

## Installation

```
make install
```

## Uninstallation

```
make uninstall
```

## Configuration

Everything should work out of the box. If you like to use nm-applet add `exec --no-startup-id dbus-launch nm-applet` to your i3 config file.
