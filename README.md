# detourbrd
Detour UDP broadcast packages to a specific network interface using iptables. Useful for playing LAN games over VPN which discover server via UDP broadcast.

## Example
Route broadcast packages to OpenVPN interface:
```# detourbrd tap0```

Reset detour:
```# detourbrd reset```
