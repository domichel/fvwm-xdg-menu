fvwm-xdg-menu
=============

This is an xdg-menu for use with fvwm and fvwm-menu-desktop.

The goal is to have an application menu in fvwm that support
the additional FreeDesktop categories out-of-the box, that
on any GNU/Linux distrinution.

For now, the files will be provided without any installation
procedure. To copy them in the correct XDG locations must be
enough to make the menu to work fine.

When done, a patch for inclusion into fvwm will be done.


You may have to symlink applications.menu to fvwm-applications.menu
in /etc/xdg/menus:

    cd /etc/xdg/menus
    ln -s fvwm-applications.menu applications.menu


This work is copyrighted under the GPL v.2, look at the
LICENSE file for details.

Enjoy,
Dominique Michel