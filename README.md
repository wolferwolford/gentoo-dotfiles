# 🐺 Wolfer's Dotfiles

My personal Linux configuration managed with **Git** and **GNU Stow**.

The goal of this repository is to keep my development environment reproducible, organized, and easy to deploy on any machine.

---

## 📂 Repository Structure

```text
dotfiles/
├── bash/
│   └── .bashrc
├── kitty/
│   └── .config/
│       └── kitty/
│           ├── kitty.conf
│           └── current-theme.conf
.
.
.
└── README.md
```

Each top-level directory is a **Stow package**.

The directory layout mirrors my home directory.

For example:

```text
kitty/
└── .config/
    └── kitty/
        └── kitty.conf
```

becomes

```text
~/.config/kitty/kitty.conf
```

after running GNU Stow.

---

## 🛠 Requirements

* Git
* GNU Stow

Install GNU Stow:

### Arch Linux

```bash
sudo pacman -S stow
```

### Gentoo

```bash
emerge --ask app-admin/stow
```

---

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles
```

Move into the repository:

```bash
cd ~/dotfiles
```

Create the symbolic links:

```bash
stow bash
stow kitty
```

Or install multiple packages at once:

```bash
stow bash kitty
```

---

## 🔄 Updating

After making changes:

```bash
git add -A
git commit -m "Describe changes"
git push
```

If package layouts change, recreate symlinks with:

```bash
stow -R <package>
```

Example:

```bash
stow -R kitty
```

---

## 🧹 Removing a Package

```bash
stow -D kitty
```

---

## 📦 Packages

| Package | Description                  |
| ------- | ---------------------------- |
| `bash`  | Bash configuration           |
| `kitty` | Kitty terminal configuration |

More packages will be added over time.

---

## 🎯 Goals

* Reproducible development environment
* Clean repository structure
* Easy migration to new machines
* Version-controlled configuration
* Learn Git and GNU Stow properly

---

## 📄 License

This repository is available under the MIT License.
