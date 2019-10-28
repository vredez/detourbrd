# detourbrd
Detour UDP broadcast packages to a specific network interface using iptables. Useful for playing LAN games over VPN which discover servers via UDP broadcast.

## Install
```# make install```
```# make uninstall```

## Examples
### Route broadcast packages to specific interface
```# detourbrd tap0```

Reset detour:
```# detourbrd reset```

### Integrate into OpenVPN configuration for automatic setup
```
/etc/openvpn/client/example.conf
```
```
# ...
# Automatic UDP broadcast detour
up "detourbrd"
down "detourbrd reset"

down-pre
script-security 2
# ...
```
