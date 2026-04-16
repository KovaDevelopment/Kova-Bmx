# 🚲 Kova-Bmx (Portable Bicycle System)
---

## ✨ Features
- 📦 **Item Integration**: Use a specific item (e.g., `bmx`) to spawn a bicycle.
- 🧲 **QB-Target Support**: Easily pick up your BMX using the built-in target system.
- 🚫 **Anti-Exploit**: Built-in logic to prevent players from spawning multiple bicycles at once.
- 🛠️ **Fully Configurable**: Easily change the bicycle model, spawn distance, and notifications in `config.lua`.
- ⚡ **Highly Optimized**: 0.00ms idle usage / 0.01ms while interacting.

---
## [PREVIEW](https://streamable.com/ntg40k)
## 🏗️ Requirements
To use this script, your server must be running:
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)

---

## 💾 Installation

#### 1. Add the Item
Add the following line to your `qb-core/shared/items.lua`:
```lua
['bmx'] = {['name'] = 'bmx', ['label'] = 'BMX', ['weight'] = 5000, ['type'] = 'item', ['image'] = 'bmx.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A portable bicycle for quick travel.'},
```

#### 2. Resource Setup
- Download the resource and place it in your `resources` folder.
- Ensure the folder is named `kova-bicycle` (or update it in your `server.cfg`).
- Add `ensure kova-bicycle` to your `server.cfg`.

#### 3. Assets
- Move the image from `kova-bicycle/image/bmx.png` to `qb-inventory/html/images/`.

---

## 🔗 Connect with Us
Stay updated and get support through our official channels:

| Platform | Link |
| :--- | :--- |
| **Discord (Kova Dev)** | [Join Kova Development](https://discord.gg/kdm) |
| **Discord (Kova Dev)** | [Join Kova Development](https://discord.gg/wCDndZ7BUa) |

---

## ⚖️ Copyright & License
Copyright © 2024 **ABo3of / Kova Development**. All rights reserved.

This script is provided as-is. Modification for personal server use is permitted, but **redistribution or commercial resale** without explicit permission from the author is strictly prohibited.

---

<p align="center">
  <b>Developed by Kova Development</b>
</p>
