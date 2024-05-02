# Neovim Configuration

## Installation

1. **Install [Neovim](https://github.com/neovim/neovim):** Ensure that Neovim version 0.8.0 or above is installed. It is recommended to [compile Neovim from the source code](https://github.com/neovim/neovim?tab=readme-ov-file#install-from-source).

    Check your Neovim version:

    ```bash
    nvim --version
    ```

2. **Clone the Configuration Repository:**

    Delete `nvim` directories (if it exists):

    ```bash
    rm -rf ~/.config/nvim &&
    rm -rf ~/.local/share/nvim
    ```

    Clone the repository:

    ```bash
    cd ~/.config &&
    git clone -b main https://github.com/krishnachandran-u/nvim.git 
    ```

3. **Run Neovim from Terminal:**

    ```bash
    nvim
    ```
