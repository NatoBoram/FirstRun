#!/bin/zsh

defaults read com.apple.driver.AppleHIDMouse

defaults write com.apple.driver.AppleHIDMouse Button3 1
defaults write com.apple.driver.AppleHIDMouse Button4 1

defaults read com.apple.driver.AppleHIDMouse
