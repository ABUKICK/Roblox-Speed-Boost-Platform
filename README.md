# Roblox Speed Boost Platform Script

A clean and safe **Server Script** for Roblox that increases a player's walk speed when they touch a specific platform and resets it back to normal when they leave.

## Features
- **Server-Side Security:** Runs safely as a standard script inside the platform part.
- **Multi-Player Support:** Properly tracks multiple players touching the platform at the same time using a reference counter.
- **Easy Customization:** Easily adjust the boost speed and normal speed variables.

## Installation & Usage

1. Open your place in **Roblox Studio**.
2. Insert a standard **Script** (not a LocalScript) and place it directly inside the **Part** (the platform) where you want the speed boost effect.
3. Paste the code from `SpeedBoostPlatform.lua` into the script.
4. Adjust `BOOST_SPEED` (default: `100`) or `NORMAL_SPEED` (default: `16`) at the top of the script if needed.
