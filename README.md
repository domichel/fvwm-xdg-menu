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
	--theme FVWM_Xdg \
	--size 24 \
	--mini-icon-dir $[FVWM_USERDIR]/icons/fvwm-desktop'

and assign a binding:

Key M A 4 Menu Fvwm-Menu

Alt+M will launch the menu. Be patient at the first invocation.
Read 'man fvwm-menu-desktop' for other possibilities.


FLUXBOX and other desktops:
---------------------------
You will need archlinux-xdg-menu from https://www.archlinux.org/packages/community/any/archlinux-xdg-menu/
Download it and run something like:

    ./xdg_menu --root-menu /etc/xdg/menus/fvwm-applications.menu --format fluxbox --desktop fluxbox --fullmenu > menu

and copy that menu file to ~/.fluxbox

For more about xdg_menu, see https://wiki.archlinux.org/index.php/XdgMenu
Xdg_menu can be used with several other desktops: twm, WindowMaker, fvwm, icewm, ion3, blackbox, fluxbox, openbox,
xfce4, openbox3, openbox3-pipe, awesome, jwm and readable.

With xfce, you may just symlink the menu:

    ln -s /etc/xdg/menus/fvwm-applications.menu ~/.config/menus/applications-merged/fvwm-applications.menu

The result will be a mix of the original xfce menu and of this one. Be aware this will made kbuildsycoca4 to run at full
speed forever and eat all your RAM.


DONE:
-----
 - The main skeleton of the menu with all the additional categories.
   KDE, GNOME, XFCE, GTK, QT, Java and Motif are not implemented. These categories
   give unecessary complicated menus and they are all for GUI applications which
   have other categories.
   
   See http://standards.freedesktop.org/menu-spec/latest/apas02.html for the specification.

- The icon theme. One icon is my own work, the other are collected from different free icon themes. No one single
  theme is complete toward the additional categories, and I am not a graphical artist.
  The icons in the FVWM_Xdg theme are coming mostly from the Tangp project, from the hicolor theme and from
  the Ken Lester's icon theme. It also inherit the Tango and gnome icon themes.


NOTE:
-----
Don't make a symlink from fvwm-applications.menu to applications.menu
in /etc/xdg/menus. This doesn't arm fvwm, but can make silly bugs like
kbuildsycoca4 running forever at 100 % cpu.

I tested this menu with different dekstops. It didn't try gnome as my system is *kit free, which is incompatible with gnome.
That menu was working fine in all desktops I try but kde. With a standard installation of that menu, it should be no issue
at all with kde, but if you try to copy or symlink /etc/xdg/menus/fvwm-applications to 
~/.config/menus/applications/merged/fvwm-applications, it work with xfce, but fail with kde: kbuildsycoca4 will
run forewer and that will even confuse the kde applications when kde is not installed.


CONTRIBUTE:
-----------
Send any comment, bug report, etc. to <dominique_libre@users.sourgeforge.net> or at the website:
https://github.com/domichel/fvwm-xdg-menu

Currently, only the English and French translations are implemented. Please considere to contribute
new translations. It is just to add them in the files in /usr/share/desktop-directories.

Artwork contributions in order to get a more consistent icon theme will be very welcome too.


Enjoy,
Dominique Michel
