# Neovim Configuration

## Installation

1. **Install [Neovim](https://github.com/neovim/neovim):** Ensure that Neovim version 0.8.0 or above is installed. It is recommended to [compile Neovim from the source code](https://github.com/neovim/neovim?tab=readme-ov-file#install-from-source).

    ```bash
    nvim --version
    ```

2. **Install Lazy Plugin Manager:** Follow the installation instructions provided in the [Lazy plugin's GitHub repository](https://github.com/folke/lazy.nvim).

3. **Clone the Configuration Repository:**

    Check your Neovim version:

    ```bash
    nvim --version
    ```

    If the version is greater than or equal to v0.9.4, you may encounter an issue with the tab key, as explained [here](#tab-not-working-in-insert-mode).

    Delete `nvim` directory if it exists:

    ```bash
    rm -rf nvim
    ```

    Clone the repository:

    ```bash
    cd ~/.config &&
    git clone -b main https://github.com/krishnachandran-u/nvim.git 
    ```

5. **Run Neovim from Terminal:**

    ```bash
    nvim
    ```

## Bug Fixes

### Tab Not Working in Insert Mode

If you face issues with the tab key in insert mode, it might be due to a conflict with the [UltiSnips](https://github.com/SirVer/ultisnips) plugin, especially for Neovim versions >= 0.9.4.

To resolve this, edit the Lazy plugin configuration:

```bash
nvim ~/.config/nvim/lua/lazyplugins.lua 
```
delete or [comment out](https://www.codecademy.com/resources/docs/lua/comments) the following lines:


```markdown
"honza/vim-snippets",
```
```markdown
"SirVer/ultisnips",
```

You are now safe to go. <br>
After making these changes, the tab key should function correctly. Note that uninstalling [UltiSnips](https://github.com/SirVer/ultisnips) is only recommended if there is a specific mapping conflict for the tab key. Refer to [this StackExchange question](https://vi.stackexchange.com/questions/30807/cant-use-tab-in-insert-mode) for related issues. If you are using Neovim versions < 0.9.4, you may not experience this problem. Additional information can be found in [this UltiSnips issue](https://github.com/SirVer/ultisnips/issues/1022).
