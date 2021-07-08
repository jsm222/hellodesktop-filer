PORTNAME=	hellodesktop-filer
PORTVERSION=	0.10
CATEGORIES=	x11-fm

MAINTAINER=     jsm@FreeBSD.org
COMMENT=        File manager that also renders the desktop

LICENSE=	GPLv2

LIB_DEPENDS=	libmenu-cache.so:x11/menu-cache \
		libfm.so:x11/libfm \
		libexif.so:graphics/libexif

USES=		cmake compiler:c++14-lang desktop-file-utils gnome\
		gettext-runtime localbase:ldflags pkgconfig kde:5 qt:5 \
		xorg

USE_GITHUB=     yes
GH_ACCOUNT=     helloSystem
GH_PROJECT=     Filer
GH_TAGNAME=	e11a2eb

USE_QT=		buildtools_build qmake_build core dbus gui linguisttools \
		widgets x11extras
USE_GNOME=	glib20
USE_XORG=	xcb

.include <bsd.port.mk>
