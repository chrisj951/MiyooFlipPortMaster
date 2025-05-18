## Info
Adds portmaster support to the Miyoo Flip's Stock OS

## Installation
- Download the latest release, unzip, and copy all files to the root of your SDCARD with the Stock Miyoo Flip FW on it
(Verified on 20250509213001 but theoretically should work on earlier versions too)

## Control Swapping
- Ability to swap between X360 and Nintendo controls :
    -   Hover over any game in the Game/PM section
    -   Press 'X' and then click the controls option
    -   Will be returned back to the game selection list
    -   Press 'X' again and now press Launch
    -   All games going forward will now use the selected control (X360 vs Nintendo)

## Background
This is a split off of PyUI to include just the portions needed for PortMaster to run on the Miyoo Flip
Includes the needed libraries and sets them up on startup to ensure most ports run.

## Additions
- Included lib folder should minimize errors due to missing *.so files
- 32-bit libs included for 32-bit ports like AM2R
- Swapped out mali driver when launching a port to ensure compatability with Godot 4 ports
- Custom ld-linux-armhf.so.3 so ports which rely on 64-bit and 32-bit simultaneously work (e.g. Braid)

## Support
- 64-bit ports
- 32-bit ports 
- Westonpack ports
- Godot 4 ports (32-bit and 64-bit)
- Mono ports


There's a few games that don't run but from testing there aren't too many

## Discord
Feel free to reach out for help / post questions, or just chat:
https://discord.gg/Z7AEPNAE9n

## Testing
This is the version that has been in SPRUCE for since the beginning of April, modified to work on stock

## Thanks
- Thanks to the PortMaster team for building PortMaster and all of the ports
- Thanks to the muOS team for helping provide prebuilt libs for the ports to use
- SPRUCE team / discord for helping with testing of this
