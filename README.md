# My Dotfiles

This repository contains my personal configuration files for various applications. The configurations are managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/<your-username>/dotfiles.git ~/repos/personal/dotfiles
    ```

2.  **Install the dotfiles using Stow:**
    The `.stowrc` file is configured to stow the files in this repository to the home directory (`~`).

    To install all configurations, run the following command from within the repository's root directory:
    ```bash
    stow .
    ```

    To install a specific configuration (e.g., `nvim`), you can run:
    ```bash
    stow nvim
    ```

## Configured Software

This repository contains configurations for the following software:

*   **Window Manager:** [i3](httpss://i3wm.org/)
*   **Terminal:** [Alacritty](https://alacritty.org/)
*   **Shell:** [Bash](https://www.gnu.org/software/bash/)
*   **Editor:** [Neovim](https://neovim.io/)
*   **Multiplexer:** [Tmux](https://github.com/tmux/tmux/wiki)
*   **Launcher:** [Rofi](https://github.com/davatorium/rofi)

## Key Dependencies

For Arch-based systems, you can install the key dependencies by running the `install_pacman_deps.sh` script:

```bash
./install_pacman_deps.sh
```

For other systems, you will need to have the following software installed:

*   `stow`
*   `i3`
*   `alacritty`
*   `neovim` (v0.10+ for snippet support)
*   `tmux`
*   `rofi`
*   `rofi-rbw` (for Bitwarden integration)
*   `flameshot` (for screenshots)
*   `xclip` (for clipboard integration with tmux)
*   `jq` (for the `rdp.desktop` script)
*   `bw` (Bitwarden CLI)

## Custom Scripts

This repository includes a number of custom scripts located in `bash_scripts/.scripts/`:

*   `desk.sh`: Sets up the display for a desktop monitor setup.
*   `laptop.sh`: Sets up the display for a laptop-only setup.
*   `git-cleanup.sh`: A script to delete local branches that are not on the remote.
*   `git-root.sh`: A helper script to find the root of a git repository.
*   `qutebrowser-session.sh`: A script to launch qutebrowser with a specific session using rofi.
*   `rdp.desktop`: A script to connect to a remote desktop using credentials from Bitwarden.
