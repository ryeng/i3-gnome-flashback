DESTDIR ?= /

all:
	@echo "Nothing to build"

install:
	install -m0755 -D i3-gnome-flashback         $(DESTDIR)/usr/bin/i3-gnome-flashback
	install -m0755 -D i3-gnome-flashback-session $(DESTDIR)/usr/bin/i3-gnome-flashback-session
	install -m0644 -D i3-gnome-flashback.desktop $(DESTDIR)/usr/share/applications/i3-gnome-flashback.desktop
	install -m0644 -D i3-gnome-flashback.session $(DESTDIR)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	install -m0644 -D i3-gnome.desktop           $(DESTDIR)/usr/share/xsessions/i3-gnome.desktop

uninstall:
	rm -f $(DESTDIR)/usr/bin/i3-gnome-flashback
	rm -f $(DESTDIR)/usr/bin/i3-gnome-flashback-session
	rm -f $(DESTDIR)/usr/share/applications/i3-gnome-flashback.desktop
	rm -f $(DESTDIR)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	rm -f $(DESTDIR)/usr/share/xsessions/i3-gnome.desktop

.PHONY: all install uninstall
