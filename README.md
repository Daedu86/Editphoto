# Image Enhancer Script 🎨

This project is a **PowerShell script** that enhances an image by **increasing its saturation and contrast**.  
It uses .NET's **System.Drawing** library to manipulate each pixel and outputs a modified image with more vivid and intense colors.

---

## Table of Contents

- [How it Works](#how-it-works)
- [Installation](#installation)
- [Running the Script](#running-the-script)
- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [License](#license)

---

## How it Works

- Loads an existing image from your desktop (`captured_photo.jpg`).
- For each pixel:
  - Increases the RGB values to boost **saturation**.
  - Adjusts the contrast to make colors more vivid.
- Saves the modified image as `imagen_modificada.jpg` on your desktop.

---

## Installation

This script runs directly in **PowerShell** on **Windows**.  
You don't need external libraries because it uses the built-in **System.Drawing** namespace.

---

## Running the Script

1. Make sure you have a photo named `captured_photo.jpg` saved on your desktop.
2. Save the PowerShell script with a `.ps1` extension, for example `enhance_image.ps1`.
3. Open PowerShell **as administrator**.
4. If necessary, allow running scripts by executing:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

5. Run the script:

```powershell
.\enhance_image.ps1
```

After running, the modified image will be saved to your desktop.

---

## Screenshots

### Before Editing
![Original Photo](https://github.com/Daedu86/Editphoto/blob/main/captured_photo.jpg)

### After Editing
![Enhanced Photo](https://github.com/Daedu86/Editphoto/blob/main/imagen_modificada.jpg)

---

## Requirements

- Windows OS
- PowerShell (5.1 or newer recommended)
- .NET Framework (comes pre-installed with Windows)

---

## License

This project is open-sourced under the MIT License.  
Feel free to use, modify, and share it!

---
