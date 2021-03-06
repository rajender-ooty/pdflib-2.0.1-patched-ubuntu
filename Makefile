# Generated automatically from Makefile.in by configure.
# Main PDFlib Makefile

VERSION = 2.01

SHELL = /bin/sh
INSTALL = /usr/bin/install -c

srcdir = .

EXE =  
OBJ = o
AR = ar rc
RANLIB = ranlib
CC	= gcc
RM      = rm -f

# installation directories
prefix = /usr/local
exec_prefix = ${prefix}

# directories for the final library and include files for PDFlib users
libdir = ${exec_prefix}/lib
includedir = ${prefix}/include

DIRNAME = pdflib-$(VERSION)
TARFILE = pdflib-$(VERSION).tar
ZIPFILE = pdflib-$(VERSION).zip

# ------------------------- default target  -------------------------------

all:	pdflib pdflib_c pdflib_cpp pdflib_perl

pdflib::
	cd pdflib && $(MAKE)

clients: pdflib
	-cd clients && $(MAKE)

pdflib_c: pdflib
	-cd bind/c && $(MAKE)

pdflib_cpp: pdflib
	-cd bind/cpp && $(MAKE)

pdflib_java: pdflib
	-cd bind/java && $(MAKE)

pdflib_perl: pdflib
	-cd bind/perl && $(MAKE)

pdflib_python: pdflib
	-cd bind/python && $(MAKE)

pdflib_tcl: pdflib
	-cd bind/tcl && $(MAKE)

# --------------------------- test ---------------------------------

test: pdflib pdflib_test pdflib_c_test pdflib_cpp_test pdflib_perl_test

pdflib_test:
	-cd test; $(MAKE) test
	-cd clients && $(MAKE) test

pdflib_c_test:
	-cd bind/c && $(MAKE) test

pdflib_cpp_test:
	-cd bind/cpp && $(MAKE) test

pdflib_java_test:
	-cd bind/java && $(MAKE) test

pdflib_perl_test:
	-cd bind/perl && $(MAKE) test

pdflib_python_test:
	-cd bind/python && $(MAKE) test

pdflib_tcl_test:
	-cd bind/tcl && $(MAKE) test

# --------------------------- install ---------------------------------

install: pdflib_install pdflib_c_install pdflib_cpp_install pdflib_perl_install

pdflib_install:
	-cd pdflib && $(MAKE) install

# No install to be done for C and C++ bindings
pdflib_c_install:

pdflib_cpp_install:

pdflib_java_install:
	-cd bind/java && $(MAKE) install

pdflib_perl_install:
	-cd bind/perl && $(MAKE) install

pdflib_python_install:
	-cd bind/python && $(MAKE) install

pdflib_tcl_install:
	-cd bind/tcl && $(MAKE) install

# --------------------------- uninstall ---------------------------------

uninstall: pdflib_uninstall pdflib_c_uninstall pdflib_cpp_uninstall pdflib_perl_uninstall

pdflib_uninstall:
	-cd pdflib && $(MAKE) uninstall

pdflib_c_uninstall:
	-cd bind/c && $(MAKE) uninstall

pdflib_cpp_uninstall:
	-cd bind/cpp && $(MAKE) uninstall

pdflib_java_uninstall:
	-cd bind/java && $(MAKE) uninstall

pdflib_perl_uninstall:
	-cd bind/perl && $(MAKE) uninstall

pdflib_python_uninstall:
	-cd bind/python && $(MAKE) uninstall

pdflib_tcl_uninstall:
	-cd bind/tcl && $(MAKE) uninstall
	
clean:
	-cd pdflib && $(MAKE) clean
	-cd bind/c && $(MAKE) clean
	-cd bind/cpp && $(MAKE) clean
	-cd bind/java && $(MAKE) clean
	-cd bind/perl && $(MAKE) clean
	-cd bind/python && $(MAKE) clean
	-cd bind/tcl && $(MAKE) clean
	-cd test && $(MAKE) clean
	-cd clients && $(MAKE) clean
	-cd util && $(MAKE) clean

distclean: clean
	-$(RM) config.cache config.log config.status Makefile bind/c/Makefile bind/cpp/Makefile bind/java/Makefile bind/perl/Makefile bind/python/Makefile bind/tcl/Makefile test/Makefile pdflib/Makefile clients/Makefile util/Makefile

maintainer-clean:
	-cd pdflib && $(MAKE) maintainer-clean
	-cd bind/c && $(MAKE) maintainer-clean
	-cd bind/cpp && $(MAKE) maintainer-clean
	-cd bind/java && $(MAKE) maintainer-clean
	-cd bind/perl && $(MAKE) maintainer-clean
	-cd bind/python && $(MAKE) maintainer-clean
	-cd bind/tcl && $(MAKE) maintainer-clean
	-cd test && $(MAKE) maintainer-clean
	-cd clients && $(MAKE) maintainer-clean
	-cd util && $(MAKE) maintainer-clean
	-$(RM) $(TARFILE).gz $(ZIPFILE)

FORCE:

# Distribution file listing ---------------------------------------------
PDFLIBFILES = 			\
	pdflib/p_afmparse.c	\
	pdflib/p_annots.c	\
	pdflib/p_basic.c	\
	pdflib/p_ccitt.c	\
	pdflib/p_color.c	\
	pdflib/p_draw.c		\
	pdflib/p_filter.c	\
	pdflib/p_font.c		\
	pdflib/p_gif.c		\
	pdflib/p_gstate.c	\
	pdflib/p_hyper.c	\
	pdflib/p_image.c	\
	pdflib/p_jpeg.c		\
	pdflib/p_text.c		\
	pdflib/p_tiff.c		\
	pdflib/p_util.c		\
	pdflib/ansi_e.h		\
	pdflib/macrom_e.h	\
	pdflib/p_afmparse.h	\
	pdflib/p_intern.h	\
	pdflib/p_metrics.h	\
	pdflib/pdfdoc_e.h	\
	pdflib/p_config.h	\
	pdflib/pdflib.i		\
	pdflib/pdflib.h

CLIENTFILES = \
	clients/pdfimage.c	\
	clients/pdfgraph.c	\
	clients/text2pdf.c

DOCFILES = \
	readme.txt			\
	doc/install.txt			\
	doc/compatibility.txt		\
	doc/changes.txt			\
	bind/c/readme.txt		\
	bind/cpp/readme.txt		\
	bind/java/readme.txt		\
	bind/perl/readme.txt		\
	bind/python/readme.txt		\
	bind/tcl/readme.txt		\
	bind/vb/readme.txt

PDFFILES = \
	doc/PDFlib.pdf		\
	doc/license.pdf

TESTFILES = \
	test/pdftest.c		\
	test/nesrin.jpg		\
	test/tm.g3		\
	test/pdflib.gif		\
	test/acroweb_j.tif	\
	test/graphdata

BINDFILES = \
	bind/cgi/pdfclock.cgi	\
	bind/c/hello.c		\
	bind/c/pdfclock.c	\
	bind/cpp/pdflib.cpp	\
	bind/cpp/pdflib.hpp	\
	bind/cpp/hello.cpp	\
	bind/cpp/pdfclock.cpp	\
	bind/java/pdflib_java.c	\
	bind/java/pdflib.java	\
	bind/java/hello.java	\
	bind/java/pdfclock.java	\
	bind/perl/pdflib_pl.c	\
	bind/perl/Makefile.PL.in \
	bind/perl/pdflib.pm	\
	bind/perl/hello.pl	\
	bind/perl/pdfclock.pl	\
	bind/python/pdflib_py.c	\
	bind/python/hello.py	\
	bind/python/pdfclock.py	\
	bind/tcl/pdflib_tcl.c	\
	bind/tcl/pkgIndex.tcl	\
	bind/tcl/hello.tcl	\
	bind/tcl/pdfclock.tcl	\
	bind/vb/hello.bas	\
	bind/vb/pdfclock.bas	\
	bind/vb/pdflib_vb.def	\
	bind/vb/pdflib_vb.idl

BUILDFILES = \
	Makefile.in		\
	configure		\
	configure.in		\
	PDFlib.dsw		\
	PDFlib.mcp		\
	bind/c/Makefile.in	\
	bind/c/c.dsp		\
	bind/cpp/Makefile.in	\
	bind/cpp/Cplusplus.dsp	\
	bind/java/Makefile.in	\
	bind/java/Java.dsp	\
	bind/perl/Makefile.in	\
	bind/perl/Perl.dsp	\
	bind/python/Makefile.in	\
	bind/python/Python.dsp	\
	bind/tcl/Makefile.in	\
	bind/tcl/Tcl.dsp	\
	bind/vb/VisualBasic.dsp	\
	clients/Makefile.in	\
	pdflib/Makefile.in	\
	pdflib/pdflib.dsp	\
	pdflib/pdflib_static.dsp	\
	test/Makefile.in	\
	test/test.dsp		\
	util/Makefile.in	\
	util/install-sh

AFMFILES = \
	fonts/Courier.afm		\
	fonts/Courier-Bold.afm		\
	fonts/Courier-Oblique.afm	\
	fonts/Courier-BoldOblique.afm	\
	fonts/Helvetica.afm		\
	fonts/Helvetica-Bold.afm	\
	fonts/Helvetica-Oblique.afm	\
	fonts/Helvetica-BoldOblique.afm	\
	fonts/Symbol.afm		\
	fonts/Times-Roman.afm		\
	fonts/Times-Bold.afm		\
	fonts/Times-Italic.afm		\
	fonts/Times-BoldItalic.afm	\
	fonts/ZapfDingbats.afm		\
	fonts/pdflib.upr		\
	fonts/readme.txt

UTILFILES = \
	util/getopt.c		\
	util/compile_metrics.c


# End of distribution file listing -----------------------------------------

DISTFILES = $(PDFLIBFILES) $(CLIENTFILES) $(DOCFILES) $(PDFFILES) $(TESTFILES) $(BINDFILES) $(AFMFILES) $(BUILDFILES) $(UTILFILES)

# Text files will be subjected to line end conversion before makeing a release
CONVFILES = $(PDFLIBFILES) $(CLIENTFILES) $(AFMFILES) $(DOCFILES) $(BINDFILES) $(UTILFILES)

MACDEV="Daten:Develop"

# We don't use a symbolic link to . because our simple lineend conversion
# doesn't preserve file attributes.
# The touch command is necessary because the "version" target changes the
# file access times of the SWIG-generated wrapper files, resulting
# in unnecessary attempts to launch SWIG on client systems.

dist: version depend
	touch bind/*/*.c;				\
	$(RM) -r $(DIRNAME) $(ZIPFILE) $(TARFILE).gz;	\
	mkdir $(DIRNAME);				\
	cp -a . $(DIRNAME);				\
	(for i in $(DISTFILES); do			\
		echo $$i;				\
	done) | sed "s;.*;$(DIRNAME)/&;" >distfilelist; \
	tar cvf  $(TARFILE) `cat distfilelist`;		\
	gzip -9 $(TARFILE);				\
	cd $(DIRNAME); lineend -d $(CONVFILES); cd ..;	\
	zip -9 $(ZIPFILE) `cat distfilelist`;		\
	$(RM) -r $(DIRNAME) distfilelist;		\
	tar xvfz $(TARFILE).gz;				\
	cd $(DIRNAME); lineend -m $(CONVFILES); cd ..;

# We don't bother with dependencies in the sample files since these
# don't really change.

depend:
	-cd pdflib && $(MAKE) depend
	-cd test && $(MAKE) depend
	-cd clients && $(MAKE) depend
	-cd util && $(MAKE) depend

swig:
	-cd bind/java && $(MAKE)
	-cd bind/perl && $(MAKE)
	-cd bind/python && $(MAKE)
	-cd bind/tcl && $(MAKE)

# Patch version numbers into several files. We do this here in order
# to avoid cluttering the distribution with too many *.in files.
# Note that some generated files get their version number patched
# by down-stream Makefiles because those files will be built by
# make themselves.
# The Makefiles, of course, will get patched by configure.

version:
	(\
	export FILE=readme.txt; \
	sed -e 's%PDFlib V[0-9.]*%PDFlib V2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=pdflib/pdflib.i; \
	sed -e 's%System.loadLibrary(\\"pdf_java.*\\")%System.loadLibrary(\\"pdf_java2.01\\")%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/perl/hello.pl; \
	sed -e 's%use pdflib.*%use pdflib 2.01;%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/perl/pdfclock.pl; \
	sed -e 's%use pdflib.*%use pdflib 2.01;%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/tcl/hello.tcl; \
	sed -e 's%package require pdflib.*%package require pdflib 2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/tcl/pdfclock.tcl; \
	sed -e 's%package require pdflib.*%package require pdflib 2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/vb/pdflib_vb.idl; \
	sed -e 's%version(.*)%version(2.01)%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/vb/pdflib_vb.idl; \
	sed -e 's%PDFlib [0-9.]* Type%PDFlib 2.01 Type%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=pdflib/pdflib.dsp; \
	sed -e 's%/version:[0-9.]*%/version:2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/cpp/Cplusplus.dsp; \
	sed -e 's%/version:[0-9.]*%/version:2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/java/Java.dsp; \
	sed -e 's%/out:"pdf_java[0-9.]*.dll"%/out:"pdf_java2.01.dll"%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	export FILE=bind/vb/VisualBasic.dsp; \
	sed -e 's%/version:[0-9.]*%/version:2.01%g' <$$FILE >$$FILE.tmp; \
	rm $$FILE && mv $$FILE.tmp $$FILE; \
	)
	@echo "The following must have their version number patched manually:"
	@echo "pdflib/pdflib.h";
