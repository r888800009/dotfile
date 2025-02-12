Setup all
```bash
cd dotfile
bash setup.sh
```

Setup only zsh
```bash
bash setup_zsh.sh
chsh -s /bin/zsh
```

``` bash
ln -s $(pwd)/.config/translate-shell ~/.config/translate-shell -f 
```

配置環境變數 `$DOTFILE` 到 dotfile 的路徑

配置rime
```
ln -s $(pwd)/rime/bopomofo_tw.custom.yaml ~/.config/fcitx/rime -f
ln -s $(pwd)/rime/default.custom.yaml ~/.config/fcitx/rime -f

# fcitx5
ln -s ~/.config/fcitx/rime/  ~/.local/share/fcitx5/rime
```

配置 fcitx5 主題(不支援symbolic link)
```
mkdir ~/.local/share/fcitx5/themes
cp -r fcitx5-themes/macOS-light ~/.local/share/fcitx5/themes/macOS-light
```

配置newsboat
``` bash
ln -s $(pwd)/.config/newsboat/config ~/.config/newsboat/config -f
```

## Using `nativefier` for Web App
```bash
./nativefier-setup.sh
```

## setup yabai and shkd

```bash
ln -s $(pwd)/skhdrc ~/.skhdrc
ln -s $(pwd)/yabairc ~/.yabairc
```

## problem
- Make sure to make a symbolic link at `dotfile` repo dir.
