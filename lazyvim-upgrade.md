# 如何升级的LazyVim

## Assistant

我是通过 LazyVim 自带的 `lazy.nvim` 插件管理器升级的，在你的 Neovim 配置目录中执行了：

```bash
cd ~/.config/nvim
nvim --headless "+Lazy! sync" "+qa!"
```

由于你的网络需要代理，实际运行时通过现有的 `rtk proxy` 包装：

```bash
rtk proxy /usr/local/bin/nvim \
  --appimage-extract-and-run \
  --headless \
  "+Lazy! sync" \
  "+qa!"
```

`Lazy! sync` 会：

- 更新 LazyVim 本身
- 更新已安装插件
- 安装新增依赖
- 删除配置中已移除的插件
- 更新 `lazy-lock.json`（如果该文件由配置仓库管理）

第一次升级后，LazyVim 提示 Treesitter 需要从旧 `master` 分支迁移到 `main`，所以我重启 Neovim 环境后又执行了一次同步。随后安装了新版所需的 `tree-sitter-cli`，并重新编译了 39 个 parser。

以后你在 Neovim 里也可以直接运行：

```vim
:Lazy sync
```

或者打开界面：

```vim
:Lazy
```

然后按 `S` 执行同步。由于你的机器需要代理，若图形界面更新下载失败，更稳妥的方式是：

```bash
cd ~/.config/nvim
rtk proxy nvim
```

进入后再执行：

```vim
:Lazy sync
```

这次升级后的 LazyVim 版本是 `16.0.0`。
