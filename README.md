fvwm-xdg-menu
=============

This is an xdg-menu for use with fvwm and fvwm-menu-desktop.

The goal is to have an application menu in fvwm that support
the additional FreeDesktop categories out-of-the box, that
on any GNU/Linux distribution.


LICENSE:
--------
This work is copyrighted under the GPL v.2, look at the LICENSE file for details.


INSTALL:
--------
It is a Makefile now, read the INSTALL file.


FVWM:
-----
To incorporate it into fvwm, just put something like the following into your configuration:

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


DONE:
-----
 - The main skeleton of the menu.
 - Some addtional categories are included with a mechanism to
    include them into the menu. If a desktop file contain 2
    main categories and 1 additional category, the program
    will appear 2 times.
 - The additional categories until Engineering.
   See http://standards.freedesktop.org/menu-spec/latest/apas02.html for the list.


TODO to reach the holly goal:
 - Add the remaining additional categories.

When done, find some nice artwork for all the categories (icons).


NOTE:
-----
Don't make a symlink from fvwm-applications.menu to applications.menu
in /etc/xdg/menus. This doesn't arm fvwm, but can make silly bugs like
kbuildsycoca4 running forever at 100 % cpu.


CONTRIBUTE:
-----------
Send any comment, bug report, etc. to <dominique_libre@users.sourgeforge.net> or at the website:
https://github.com/domichel/fvwm-xdg-menu

Currently, only the English and French translations are implemented. Please considere contribute
new translations. It is just to add them in the files in /usr/share/desktop-directories.

Artwork contributions for the icons will be very welcome too.


Enjoy,
Dominique Michel
