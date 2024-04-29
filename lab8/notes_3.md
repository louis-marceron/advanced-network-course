# 2.9

```
R_3#show ip interface brief
Interface              IP-Address      OK? Method Status                Protocol 
FastEthernet0/0        172.16.3.30     YES manual up                    up 
FastEthernet0/1        unassigned      YES NVRAM  administratively down down 
Serial0/0/0            10.3.4.1        YES manual up                    up 
Serial0/0/1            10.2.3.2        YES manual up                    up 
Vlan1                  unassigned      YES NVRAM  administratively down down

R_3#show ip route
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2, E - EGP
       i - IS-IS, L1 - IS-IS level-1, L2 - IS-IS level-2, ia - IS-IS inter area
       * - candidate default, U - per-user static route, o - ODR
       P - periodic downloaded static route

Gateway of last resort is not set

     10.0.0.0/8 is variably subnetted, 4 subnets, 2 masks
C       10.2.3.0/24 is directly connected, Serial0/0/1
L       10.2.3.2/32 is directly connected, Serial0/0/1
C       10.3.4.0/24 is directly connected, Serial0/0/0
L       10.3.4.1/32 is directly connected, Serial0/0/0
     172.16.0.0/16 is variably subnetted, 2 subnets, 2 masks
C       172.16.3.0/24 is directly connected, FastEthernet0/0
L       172.16.3.30/32 is directly connected, FastEthernet0/0

```

# 2.11

```
R_3#show ip ospf neighbor


Neighbor ID     Pri   State           Dead Time   Address         Interface
172.16.4.40       0   FULL/  -        00:00:33    10.3.4.2        Serial0/0/0
172.16.2.20       0   FULL/  -        00:00:30    10.2.3.1        Serial0/0/1
```

# 2.28
```
# before

     10.0.0.0/8 is variably subnetted, 4 subnets, 2 masks
C       10.2.3.0/24 is directly connected, Serial0/0/1
L       10.2.3.2/32 is directly connected, Serial0/0/1
C       10.3.4.0/24 is directly connected, Serial0/0/0
L       10.3.4.1/32 is directly connected, Serial0/0/0
     172.16.0.0/16 is variably subnetted, 4 subnets, 2 masks
O       172.16.2.0/24 [110/65] via 10.2.3.1, 00:02:11, Serial0/0/1
C       172.16.3.0/24 is directly connected, FastEthernet0/0
L       172.16.3.30/32 is directly connected, FastEthernet0/0
O       172.16.4.0/24 [110/65] via 10.3.4.2, 00:02:11, Serial0/0/0
     192.168.3.0/24 is variably subnetted, 4 subnets, 2 masks
C       192.168.3.0/26 is directly connected, Loopback1
L       192.168.3.1/32 is directly connected, Loopback1
C       192.168.3.128/26 is directly connected, Loopback3
L       192.168.3.129/32 is directly connected, Loopback3

# after

     10.0.0.0/8 is variably subnetted, 5 subnets, 3 masks
C       10.2.3.0/24 is directly connected, Serial0/0/1
L       10.2.3.2/32 is directly connected, Serial0/0/1
C       10.3.4.0/24 is directly connected, Serial0/0/0
L       10.3.4.1/32 is directly connected, Serial0/0/0
S       10.108.128.0/22 [1/0] via 172.16.3.31
                        [1/0] via 172.16.3.32
     172.16.0.0/16 is variably subnetted, 4 subnets, 2 masks
O       172.16.2.0/24 [110/65] via 10.2.3.1, 00:03:53, Serial0/0/1
C       172.16.3.0/24 is directly connected, FastEthernet0/0
L       172.16.3.30/32 is directly connected, FastEthernet0/0
O       172.16.4.0/24 [110/65] via 10.3.4.2, 00:03:53, Serial0/0/0
     192.168.3.0/24 is variably subnetted, 6 subnets, 2 masks
C       192.168.3.0/26 is directly connected, Loopback1
L       192.168.3.1/32 is directly connected, Loopback1
S       192.168.3.64/26 is directly connected, Loopback1
C       192.168.3.128/26 is directly connected, Loopback3
L       192.168.3.129/32 is directly connected, Loopback3
S       192.168.3.192/26 [1/0] via 192.168.3.130
S*   0.0.0.0/0 is directly connected, Loopback1
```


