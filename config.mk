# st version
VERSION = 0.8.5

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /opt/X11/include
X11LIB = /opt/X11/lib

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
	-I/opt/X11/include/freetype2
#       `$(PKG_CONFIG) --cflags fontconfig` \
#       `$(PKG_CONFIG) --cflags freetype2`
#LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft \
LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
	-lfontconfig
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) # $(LDFLAGS)

# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`

# compiler and linker
# CC = c99

