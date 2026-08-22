# 🛠️ Axkeya's Dotfiles

Personal configuration files for an **Arch Linux** environment powered by the **Hyprland** Wayland compositor.

## 🎨 UI Components & Previews

### 📊 Status Bar (Waybar)

Includes multiple layouts togglable on the fly via `toggle-style.sh`.

| Minimal Style |
| :--- |
| ![Minimal Bar](./assets/waybar_mode_2.png) |

| Detailed Style |
| :--- |
| ![Detailed Bar](./assets/waybar_mode_1.png) |

---

### 🚀 App Launcher & Menus (Rofi)

Custom Rofi setup featuring custom themes and utility scripts for power control, wallpaper management, and device switching.

| Application Launcher | Power Menu | Wallpaper Menu | Emoji Menu | 
| :---: | :---: | :---: | :---: | 
| ![Rofi Launcher](./assets/rofi-menu.png) | ![Rofi Power Menu](./assets/rofi-powermenu.png) | ![Rofi Wallpaper Menu](./assets/rofi-wallmenu.png) | ![Rofi Emoji Menu](./assets/rofi-emoji.png)

---

### 💻 Terminal & Shell (Kitty + Fish)

Customized **Kitty** terminal coupled with a feature-rich **Fish shell** environment

| Kitty Terminal |
| :--- |
| ![Kitty Terminal](./assets/kitty-terminal.png) |

<details>
<summary>💡 Custom Prompt Switcher</summary>

Includes a custom Fish function `switch_prompt.fish` that allows you to change shell prompt layouts on the fly.

**Usage:**
```fish
switch_prompt <1-3>
```
</details>

---

### 📊 System Information (Fastfetch)

Custom **Fastfetch** configuration displaying system hardware specs, shell environment, and color palette.

| Fastfetch Overview |
| :--- |
| ![Fastfetch Screenshot](./assets/fastfetch.png) |

---

### 📂 File Manager & Audio Visualizer

**Yazi:** Fast Async I/O file manager built in Rust with image preview and keybindings matching Vim navigation.
**Cava:** Console Audio Visualizer configured to match the system's color palette.

| Yazi (File Manager) |
| :---: |
| ![Yazi Preview](./assets/yazi_and_cava.png) |

---

### 📝 Text Editor (Neovim)

Extensible, terminal-based text editor customized for speed, code navigation, and syntax highlighting.

| Neovim Workspace |
| :--- |
| ![Neovim Setup](./assets/neovim.png) |

---

### 🔤 Fonts Used

Fonts required for proper rendering of text, icons, and color emojis across the system:

* **JetBrains Mono Nerd Font** — Primary monospace font for terminal, code, and UI elements.
* **Font Awesome** — Vector icons for Waybar, Rofi, and custom scripts.
* **Noto Color Emoji** — Color emoji support for the terminal and UI elements.

#### 📥 Installation via pacman

```bash
sudo pacman -S ttf-jetbrains-mono-nerd ttf-font-awesome ttf-noto-emoji
```
