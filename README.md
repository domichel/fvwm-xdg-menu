fvwm-xdg-menu
=============

This is a xdg application menu with full support for the additional categories for fvwm and other xdg compliant desktops.


LICENSE:
--------
This work is copyrighted under the GPL v.2, look at the LICENSE file for details.


INSTALL:
--------
It is a Makefile now, read the INSTALL file.


FVWM:
-----
To incorporate the application menu into fvwm, just put something like the following into your configuration:

DestroyMenu FvwmMenu
AddToMenu FvwmMenu
+ DynamicPopupAction Piperead 'fvwm-menu-desktop \
	--desktop fvwm \
	--menu-type applications \
	--enable-mini-icons \
	--mini-icon-dir $[FVWM_USERDIR]/icons/fvwm-desktop'

and assign a binding:

Key M A 4 Menu Fvwm-Menu

Alt+M will launch the menu. Be patient at the first invocation.
Read 'man fvwm-menu-desktop' for other possibilities.


DONE:
-----
 - The main skeleton of the menu with all the additional categories.
   KDE, GNOME, XFCE, GTK, QT, Java and Motif are not implemented. These categories
   give unecessary complicated menus and they are all for GUI applications which
   have other categories. It is also the ConsoleOnly category for the console
   only applications! Like it or not, that's my choice.
   
   See http://standards.freedesktop.org/menu-spec/latest/apas02.html for the specification.


TODO:
-----
Find some nice artwork icons for all the categories and incorporate them into the menu.


NOTE:
-----
Don't make a symlink from fvwm-applications.menu to applications.menu
in /etc/xdg/menus. This doesn't arm fvwm, but can make silly bugs like
kbuildsycoca4 running forever at 100 % cpu.


CONTRIBUTE:
-----------
Send any comment, bug report, etc. to <dominique_libre@users.sourgeforge.net> or at the website:
https://github.com/domichel/fvwm-xdg-menu

Currently, only the English and French translations are implemented. Please considere to contribute
new translations. It is just to add them in the files in /usr/share/desktop-directories.

Artwork contributions for the icons will be very welcome too.


Enjoy,
Dominique Michel
