#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_AWESOME_GNOME = $(PREFIX)/bin/awesome-gnome
PATH_AWESOME_GNOME_DESKTOP = $(PREFIX)/share/applications/awesome-gnome.desktop
PATH_AWESOME_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/awesome-gnome.session
PATH_AWESOME_GNOME_XSESSION = $(PREFIX)/share/xsessions/awesome-gnome.desktop
PATH_GNOME_SESSION_AWESOME = $(PREFIX)/bin/gnome-session-awesome

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D xsessions/awesome-gnome.desktop $(PATH_AWESOME_GNOME_XSESSION)
	$(INSTALL) -m0644 -D applications/awesome-gnome.desktop $(PATH_AWESOME_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D gnome-session/awesome-gnome.session $(PATH_AWESOME_GNOME_SESSION)
	$(INSTALL) -m0755 -D bin/awesome-gnome $(PATH_AWESOME_GNOME)
	$(INSTALL) -m0755 -D bin/gnome-session-awesome $(PATH_GNOME_SESSION_AWESOME)



uninstall:
	rm -f $(PATH_AWESOME_GNOME)
	rm -f $(PATH_AWESOME_GNOME_DESKTOP)
	rm -f $(PATH_AWESOME_GNOME_SESSION)
	rm -f $(PATH_AWESOME_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_AWESOME)



.PHONY: all install uninstall
