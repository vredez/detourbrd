# detourbrd
Detour UDP broadcast packages to a specific network interface using iptables. Useful for playing LAN games over VPN which discover servers via UDP broadcast. Requires ```ipcalc``` to be installed.

## Install
```# make install```
```# make uninstall```

## Examples
### Route broadcast packages to specific interface
```# detourbrd tap0 1500 1656 192.168.10.2 255.255.255.0 init```

Reset detour:
```# detourbrd reset```

### Integrate into OpenVPN configuration for automatic setup
```
/etc/openvpn/client/example.conf
```
```
# ...
# Automatic UDP broadcast detour
up "/usr/local/bin/detourbrd"
down "/usr/local/bin/detourbrd reset"

down-pre
script-security 2
# ...
```
