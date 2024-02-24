# VisibleIsland
VisibleIsland brings a new and simple way to enable and configure the Dynamic Island on older devices.

## Features:
- Enable/disable the Dynamic Island with the flip of a switch
- Fix the position of the Dynamic Island to be under the notch as opposed to halfway under it
- Set the position of the Dynamic Island to anywhere you want using custom X and Y offsets
- Hide the Dynamic Island when not in use
- Fix the position of notification banners to below the island for better visibility
- Set the position of notification banners to anywhere using custom X and Y offsets
- Set the scale of the Dynamic Island to whatever size you like
- Set the transparency of the Dynamic Island to exactly what you want
- Customize the color of the Dynamic Island

## Screenshots

<img src="/Images/sc1.png" width="300" height="578"/> <img src="/Images/sc2.png" width="300" height="578"/> <img src="/Images/sc3.png" width="300" height="578"/> <img src="/Images/sc4.png" width="300" height="578"/> <img src="/Images/sc5.png" width="300" height="578"/> <img src="/Images/sc6.png" width="300" height="578"/>

**Disclaimer**

As of now, the option to fix the Dynamic Island position to directly under the notch is only officially supported on a few devices (list below), as I don't have a huge spectrum of devices to test on. If your device isn't fully compatible, use the custom positioning instead.
 

## Fully supported devices:
- iPhone X
- iPhone XS
- iPhone 11 Pro
- iPhone 13
- iPhone 13 Pro
- iPhone 14
  
  
**Note**

Some devices are currently set up using "fake" offsets calculated by setting the resolution on a device with the same size notch and finding a good position for the island. I'm not sure if these will work correctly on these devices, but ideally they should. Here's a list of the "fake" offset devices below.
  
  
## "Fake" offset devices:
- iPhone XR
- iPhone 11
- iPhone XS Max
- iPhone 11 Pro Max
- iPhone 13 Mini
- iPhone 13 Pro Max
 
 
**Version/jailbreak compatibility**

Full support for iOS 16.0 - 16.6.1 rootless or roothide (bootstrap + serotonin)
 
 
**Coming soon:**
- More official device support
- iPad support (v2.1?)
- Fix the status bar size to accommodate for the Dynamic Island (maybe)

**Known issues (fixes soon):**
- Black rectangle behind some elements (i.e. timer or FaceID unlock glyph) when using a custom color and/or transparency
- Red status bar (😳 rdar:45025538) on iPhone XR and 11 - a separate fix already exists but I'll implement it into the tweak soon

## Release Notes:

1.0-b1:
- Initial beta release

1.1-b1:
- Added a new option to disable the Dynamic Island when not in use
- Added option to move notification banners to below the Dynamic Island
- Added custom positioning for notification banners using custom X and Y offsets

2.0:
- Fixed a bug where the Dynamic Island would flicker and shake when "hide when not in use" is enabled
- Added new options to customize the color of the Dynamic Island
- Added a new option to hide the island outline
- Added a new option to customize the scale of the Dynamic Island
- Added a new option to set a custom transparency for the Dynamic Island
