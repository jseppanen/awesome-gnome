#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)usr

PATH_AWESOME_GNOME = $(PREFIX)/bin/awesome-gnome
PATH_AWESOME_GNOME_DESKTOP = $(PREFIX)/share/applications/awesome-gnome.desktop
PATH_AWESOME_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/awesome-gnome.session
PATH_AWESOME_GNOME_XSESSION = $(PREFIX)/share/xsessions/awesome-gnome-xsession.desktop
PATH_GNOME_SESSION_AWESOME = $(PREFIX)/bin/gnome-session-awesome
PATH_GSCHEMA_OVERRIDE = $(PREFIX)/share/glib-2.0/schemas/01_awesome-gnome.gschema.override

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D files/awesome-gnome-xsession.desktop $(PATH_AWESOME_GNOME_XSESSION)
	$(INSTALL) -m0644 -D files/awesome-gnome.desktop $(PATH_AWESOME_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D files/awesome-gnome.session $(PATH_AWESOME_GNOME_SESSION)
	$(INSTALL) -m0755 -D files/awesome-gnome $(PATH_AWESOME_GNOME)
	$(INSTALL) -m0755 -D files/gnome-session-awesome $(PATH_GNOME_SESSION_AWESOME)
	$(INSTALL) -m0644 -D files/01_awesome-gnome.gschema.override $(PATH_GSCHEMA_OVERRIDE)
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PATH_AWESOME_GNOME)
	rm -f $(PATH_AWESOME_GNOME_DESKTOP)
	rm -f $(PATH_AWESOME_GNOME_SESSION)
	rm -f $(PATH_AWESOME_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_AWESOME)
	rm -f $(PATH_GSCHEMA_OVERRIDE)
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: all install uninstall
