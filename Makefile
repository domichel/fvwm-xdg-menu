PREFIX ?=	/usr/local

ETC =		etc/xdg/menus/fvwm-applications.menu
DESKTOP =	usr/share/desktop-directories
DESKTOPDEST =	$(DESTDIR)$(PREFIX)/share/desktop-directories

all:
	@echo There is nothing to compile

install:
	@echo Installing /$(ETC) and its associated files in $(DESKTOPDEST)
	mkdir -p $(DESTDIR)/etc/xdg/menus
	/usr/bin/install -m 644 $(ETC) $(DESTDIR)/etc/xdg/menus
	mkdir -p $(DESKTOPDEST)
	/usr/bin/install -m 644 $(DESKTOP)/fvwm-*.directory $(DESKTOPDEST)

uninstall:
	rm -f /$(ETC)
	rm -f $(DESKTOPDEST)/fvwm-*.directory
