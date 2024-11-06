
# Uygur Adblocker

This script provides an automated solution for enabling or disabling an ad blocker by modifying the `hosts` file on a Windows system. Designed as a simple and efficient tool, it allows users to toggle ad blocking with ease and view developer information through a command-line interface.

![image](https://github.com/user-attachments/assets/f7036376-4456-47f9-99bb-34d46a396b99)

## Features
- **Enable Ad Blocker**: Copies a custom `hosts` file to the system directory, enabling ad blocking.
- **Disable Ad Blocker**: Removes the custom `hosts` file from the system directory, effectively disabling ad blocking.
- **About the Developer**: Displays information about the developer.

## Requirements
- **Operating System**: Windows
- **Administrator Privileges**: The script requests elevated permissions upon execution to access and modify system files.

## Usage
1. **Download** the script and save it in a folder.
2. **Place your custom `hosts` file** in the same directory as the script for ad blocking functionality.
3. **Run the script** as administrator. It will automatically prompt for elevation if not already run with elevated privileges.

### Options
- Upon running the script, the following options are available:
  - **Enable Ad Blocker (1)**: Activates ad blocking by copying the custom `hosts` file to the system directory.
  - **Disable Ad Blocker (2)**: Disables ad blocking by removing the custom `hosts` file.
  - **About the Developer (3)**: Displays information about the developer.

### Notes
- Ensure that a valid `hosts` file exists in the same directory as the script to enable ad blocking.
- The script checks for the existence of the `hosts` file and will provide an error message if it is not found.
