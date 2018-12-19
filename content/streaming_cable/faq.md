# FAQ

If you have problem when building the connection between your LattePanda and master device, please feel free to open your issue via [LattePanda forum](https://www.lattepanda.com/forum/).

And we will really appreciate if you can help to optimize the tutorials by **commiting tutorials or updates** to [docs repo](https://github.com/LattePandaTeam/Docs). Help users, who have same interests or meet problems like you do.

## Can't access the host

1. Make sure the Host is powered on and not in sleep mode, set the Host sleep mode to never sleep
2. Please check the Streaming Cable in the network adapter panel of both devices, If you can't find an RNDIS adapter, please reconnect the Streaming Cable and try again.
3. For Windows client, please check the Configure IPV4 of the RNDIS adapter in the Client network adapter property panel, If it is not DHCP, please Change to Using DHCP.
4. You will need to re-setup the Host if you use a new Streaming Cable or new Host 


## Remote Desktop Running so Slow?

1. Please make sure you connect Streaming Cable to USB3.0 interface
2. Please check the bandwidth of streaming cable in the network adapter panel, If the bandwidth is not 5G, please reconnect the Streaming Cable and try again.
3. If you are using Microsoft Remote Desktop, you can try NoMachine.
4. If you are using NoMachine and don’t connect a display to the HDMI interface of the Host,  it will disable the GPU acceleration  and remote desktop will slow down,  please insert a [Headless HDMI adapter](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=headless+HDMI+adapter) to the Host Device to make the GPU work properly.

​