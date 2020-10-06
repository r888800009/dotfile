```bash
cd dotfile
bash setup.sh
```

install YCM
```
python ~/.vim/plugged/youcompleteme/install.py --js-completer --java-completer --clang-completer
```

``` bash
ln -s $(pwd)/.config/translate-shell ~/.config/translate-shell -f 
```

配置環境變數 `$DOTFILE` 到 dotfile 的路徑

配置rime
```
ln -s $(pwd)/rime/bopomofo_tw.custom.yaml ~/.config/fcitx/rime -f
ln -s $(pwd)/rime/default.custom.yaml ~/.config/fcitx/rime -f
```

配置newsboat
``` bash
ln -s $(pwd)/.config/newsboat/config ~/.config/newsboat/config -f
```

## problem
- Make sure to make a symbolic link at `dotfile` repo dir.
