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

## Using `nativefier` for Web App

### Google 
Google Tasks
```bash
nativefier 'https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1' -i tasks.png -n 'Google Task(wrapped)' --honest --single-instance  --darwin-dark-mode-support --bookmarks-menu task.json
```
task.json
```json
{
  "menuLabel": "test",
  "bookmarks": [
    {
      "title": "task reload",
      "url": "https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1",
      "type": "link",
      "shortcut": "CmdOrCtrl+R"
    }
  ]
}
```

```bash
nativefier 'https://gmail.com/' --honest --single-instance

nativefier 'https://keep.google.com' -n 'Google Keep' --honest --single-instance

nativefier 'https://drive.google.com/drive/u/0/' --honest --single-instance

nativefier 'https://calendar.google.com/' --honest --single-instance -n 'Google Calendar' --strict-internal-urls

nativefier https://www.google.com.tw/maps/ -n 'Google Map'
```
## problem
- Make sure to make a symbolic link at `dotfile` repo dir.
