fvwm-xdg-menu
=============

This is an xdg-menu for use with fvwm and fvwm-menu-desktop.

The goal is to have an application menu in fvwm that support
the additional FreeDesktop categories out-of-the box, that
on any GNU/Linux distribution.

For now, the files will be provided without any installation
procedure. To copy them in the correct XDG locations must be
enough to make the menu to work fine.

When done, a patch for inclusion into fvwm will be done.

DONE:
 - The main skeleton of the menu.
 - Some addtional categories are included with a mechanism to
    include them into the menu. If a desktop file contain 2
    main categories and 1 additional category, the program
    will appear 2 times.

TODO to reach the holly goal:
 - Add the remaining additional categories.
 - Find a way to deal with AudioVideo;Audio; and AudioVideo;Video; as
    we don't want any single Audio and Viedo application to also
    appear in AudioVideo.

You may have to symlink applications.menu to fvwm-applications.menu
in /etc/xdg/menus:

    cd /etc/xdg/menus
    ln -s fvwm-applications.menu applications.menu


This work is copyrighted under the GPL v.2, look at the
LICENSE file for details.

Enjoy,
Dominique Michel