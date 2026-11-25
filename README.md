# homebrew-tap

[KeyCat Slim](https://github.com/blycr/KeyCat_Slim) 的官方 Homebrew Tap。

## 安装

```sh
brew install --cask blycr/tap/keycat
```

## 升级与卸载

```sh
# 升级
brew upgrade --cask keycat

# 卸载
brew uninstall --cask keycat

# 彻底卸载并清理配置和日志
brew uninstall --cask --zap keycat
```

## 首次启动说明

- 首次启动后需在「系统设置 → 隐私与安全性 → 输入监控」中允许 KeyCat，然后重启应用。
- 因个人开源项目未购买苹果开发者公证，如果安装时未附带 `--no-quarantine` 且系统提示「已损坏」，执行：
  ```sh
  xattr -dr com.apple.quarantine /Applications/KeyCat.app
  ```
