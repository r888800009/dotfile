#!/bin/bash
brew install hammerspoon --cask

git clone https://github.com/AdamWagner/stackline.git ~/.hammerspoon/stackline

# Make stackline run when hammerspoon launches
cd ~/.hammerspoon
echo 'stackline = require "stackline"' >> init.lua
echo 'stackline:init()' >> init.lua
