# Lua VSCode Extension Dev

Here's a development quickstart for the [Lua VSCode extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).

This Extension uses the [Lua Language Server](https://github.com/LuaLS/lua-language-server)
which has its own repo: [LuaLS/lua-language-server](https://github.com/LuaLS/lua-language-server).
By default the ./server directory is a git submodule which points to that project.

### 1. Get the code

```
git clone https://github.com/LuaLS/vscode-lua/
cd vscode-lua
git submodule update --init --recursive
```

### 2. Pre-req: TypeScript and VSCE

```
npm -g install typescript @vscode/vsce
```

### 3. Build Lua Language Server

```
cd server
./make.sh
cd ..
```

### 4. Build and install the extension.

```
# uninstall the existing extension
code --uninstall-extension sumneko.lua

# cleanup old versions of the code
rm -rf ~/.vscode/extensions/sumneko.lua*

# package your changes
vsce package -o sumneko.lua-WIP.vsix

# install your extension in VSCode
code --install-extension sumneko.lua-WIP.vsix
```

### 5. Cleanup and switch back to the release version of the extenion

```
code --uninstall-extension sumneko.lua
rm -rf ~/.vscode/extensions/sumneko.lua*
code --install-extension sumneko.lua
```
