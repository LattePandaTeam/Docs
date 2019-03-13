# Internet Connection 

## WIFI

Install the Wi-Fi antenna by plugging the round shaped end into the socket.

![](https://i.imgur.com/sUjeWPb.gif)

## Ethernet

There's a Ethernet socket on the board. Plug in the cable and surf the Internet!

## Advanced Feature

### Wake-on-LAN

!!! info
    This is contributed by community member ccs_hello. Check out the [forum post link](https://www.lattepanda.com/topic-f23t18628.html) for further dicussion here.

The settings to get WOL working are:

1. in BIOS menu, enable WOL.
2. In Control Panel > Device Manager > Gigabit Ethernet (Realtek RT8111E) Properties:
3. in Power Management tab, check all three boxes.
4. In Advanced tab, DISABLE the "Turn off wake on LAN" (or something like that), and possible several settings.
5. Use 3rd party solution to test it out. Like "RemoteBoot WOL" for iOS.

Enjoy tinkering and sharing!