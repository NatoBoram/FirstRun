#!/bin/sh

sudo apt update
apt-key list
ls /etc/apt/sources.list.d

# Keys
apt-key export A14F4FCA | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/erlang-solutions.gpg
apt-key export 093B2149 | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/freedownloadmanager.gpg
