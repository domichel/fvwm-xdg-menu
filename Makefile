PREFIX ?=	/usr/local

ETC =		etc/xdg/menus/fvwm-applications.menu
DESKTOP =	usr/share/desktop-directories
DESKTOPDEST =	$(DESTDIR)$(PREFIX)/share/desktop-directories
ICONS =		usr/share/icons/FVWM_Xdg
ICONDEST =	$(DESTDIR)$(PREFIX)/share/icons/FVWM_Xdg

all:
	@echo There is nothing to compile

install:
	@echo Installing /$(ETC) and its associated files in $(DESKTOPDEST)
	mkdir -p $(DESTDIR)/etc/xdg/menus
	/usr/bin/install -m 644 $(ETC) $(DESTDIR)/etc/xdg/menus
	mkdir -p $(DESKTOPDEST)
	/usr/bin/install -m 644 $(DESKTOP)/fvwm-*.directory $(DESKTOPDEST)
	mkdir -p $(ICONDEST)/16x16/categories
	mkdir -p $(ICONDEST)/24x24/categories
	mkdir -p $(ICONDEST)/32x32/categories
	/usr/bin/install -m 644 $(ICONS)/*.* $(ICONDEST)
	/usr/bin/install -m 644 $(ICONS)/16x16/categories/*.* $(ICONDEST)/16x16/categories
	/usr/bin/install -m 644 $(ICONS)/24x24/categories/*.* $(ICONDEST)/24x24/categories
	/usr/bin/install -m 644 $(ICONS)/32x32/categories/*.* $(ICONDEST)/32x32/categories

uninstall:
	rm -f /$(ETC)
	rm -f $(DESKTOPDEST)/fvwm-*.directory
	rm -rf $(ICONDEST)
