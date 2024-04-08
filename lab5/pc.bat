# PC_31
# 172.16.3.31/24        172.16.3.30
# 2001:db8:3::31/64     2001:db8:3::30

netsh interface ipv4 set address "Cisco" static 172.16.3.31 255.255.255.0 172.16.3.30

# PC_32
# 172.16.3.32/24        172.16.3.30
# 2001:db8:3::32/64     2001:db8:3::30

netsh interface ipv4 set address "Cisco" static 172.16.3.32 255.255.255.0 172.16.3.30

# PC_71
# 172.16.7.71/24	172.16.7.70
# 2001:db8:7::71/64	2001:db8:7::70

netsh interface ipv4 set address "Cisco" static 172.16.7.71 255.255.255.0 172.16.7.70
netsh interface ipv6 set address "Cisco" static 2001:db8:7::71/64 2001:db8:7::70

# PC_72
# 172.16.7.72/24	172.16.7.70
# 2001:db8:7::72/64	2001:db8:7::70

netsh interface ipv4 set address "Cisco" static 172.16.7.72 255.255.255.0 172.16.7.70
netsh interface ipv6 set address "Cisco" static 2001:db8:7::72/64 2001:db8:7::70
