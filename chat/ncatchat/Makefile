# $NetBSD$

GITHUB_TAG=	v${PKGVERSION_NOREV}
DISTNAME=	ncatchat-0.0.9
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_GITHUB:=rambius/}

MAINTAINER=	rambiusparkisanius@gmail.com
HOMEPAGE=	https://github.com/rambius/ncatchat/
COMMENT=	ncat-based chat app
LICENSE=	mit

DEPENDS+=	nmap-[0-9]*:../../net/nmap

NO_BUILD=	YES

RCD_SCRIPTS+=	ncatchatd

USE_LANGUAGES=	# none

do-install:
	mkdir ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/ncatchatsrv.sh ${DESTDIR}${PREFIX}/bin/ncatchatsrv.sh
	${INSTALL_SCRIPT} ${WRKSRC}/ncatchat.sh ${DESTDIR}${PREFIX}/bin/ncatchat.sh

.include "../../mk/bsd.pkg.mk"
