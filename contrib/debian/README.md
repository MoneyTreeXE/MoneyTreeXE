
Debian
====================
This directory contains files used to package moneytreexed/moneytreexe-qt
for Debian-based Linux systems. If you compile moneytreexed/moneytreexe-qt yourself, there are some useful files here.

## bitcoin: URI support ##


moneytreexe-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install moneytreexe-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your moneytreexe-qt binary to `/usr/bin`
and the `../../share/pixmaps/moneytreexe128.png` to `/usr/share/pixmaps`

moneytreexe-qt.protocol (KDE)

