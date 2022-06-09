CHROMAPRINT_VERSION = 1.5.1
CHROMAPRINT_SOURCE = chromaprint-$(CHROMAPRINT_VERSION).tar.gz
# CHROMAPRINT_SITE = https://github.com/acoustid/chromaprint/releases/download/v$(CHROMAPRINT_VERSION)/chromaprint-$(CHROMAPRINT_VERSION).tar.gz
CHROMAPRINT_SITE = $(call github,acoustid,chromaprint,v$(CHROMAPRINT_VERSION))
CHROMAPRINT_INSTALL_STAGING = YES
CHROMAPRINT_INSTALL_TARGET = YES
CHROMAPRINT_LICENSE = LGPL2.1,MIT
CHROMAPRINT_DEPENDENCIES = fftw-double

$(eval $(cmake-package))