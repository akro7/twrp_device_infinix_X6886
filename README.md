<p align="center">
  <img src="https://img.shields.io/badge/Infinix-HOT%2060%20Pro%2B-ff6b00?style=for-the-badge&logo=android&logoColor=white" />
  <img src="https://img.shields.io/badge/Model-X6886-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Android-15-green?style=for-the-badge&logo=android" />
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/TWRP-3.7.0-purple?style=for-the-badge" />
</p>

<h1 align="center">
  <img src="https://raw.githubusercontent.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/main/.github/assets/twrp_logo.png" width="80" /><br>
  Infinix HOT 60 Pro+<br>
  <sup><code>twrp_device_infinix_X6886</code></sup>
</h1>

<p align="center">
  <b>🌍 World's Slimmest 3D-Curved Screen Phone — Unlocked & Unleashed</b><br>
  <i>5.95mm of pure power. 144Hz AMOLED. Unstoppable.</i>
</p>

<p align="center">
  <a href="#-device-specifications">📱 Specs</a> •
  <a href="#-build-instructions">🛠️ Build</a> •
  <a href="#-features">✨ Features</a> •
  <a href="#-screenshots">📸 Screenshots</a> •
  <a href="#-credits">🙏 Credits</a>
</p>

---

## 📱 Device Specifications

| Feature | Specification |
|---------|-------------|
| **Codename** | `X6886` |
| **SoC** | MediaTek Helio G200 (6nm) |
| **CPU** | Octa-core (2×2.2 GHz Cortex-A76 + 6×2.0 GHz Cortex-A55) |
| **GPU** | Mali-G57 MC2 |
| **Display** | 6.78" AMOLED, 1224×2720, **144Hz**, Gorilla Glass 7i |
| **Peak Brightness** | **4500 nits** 🔆 |
| **RAM** | 6GB / 8GB LPDDR4X |
| **Storage** | 128GB / 256GB UFS 2.2 |
| **Rear Camera** | 50 MP, f/1.8, Sony IMX882, PDAF |
| **Front Camera** | 13 MP, f/2.0 |
| **Battery** | 5160 mAh + **45W Fast Charge** ⚡ |
| **OS** | Android 15 (XOS 15.1) |
| **Dimensions** | 164 × 75.8 × **5.95 mm** 📏 |
| **Weight** | **155 g** 🪶 |
| **Protection** | IP65, Gorilla Glass 7i |
| **Extras** | NFC, IR Blaster, JBL Stereo Speakers, In-Display Fingerprint |

---

## 🛠️ Build Instructions

### Prerequisites
- Ubuntu 22.04+ / WSL2
- Minimum 16GB RAM
- 100GB+ free storage

### Sync & Build

```bash
# 1. Initialize TWRP manifest
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

# 2. Sync sources (grab a coffee ☕)
repo sync -c --force-sync --no-tags --no-clone-bundle -j$(nproc --all)

# 3. Clone device tree
git clone https://github.com/Il103/twrp_device_infinix_X6886 device/infinix/X6886

# 4. Build recovery
source build/envsetup.sh
lunch twrp_X6886-eng
mka recoveryimage
