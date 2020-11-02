MODULE_big = prohibit_use_truncate
OBJS = \
	$(WIN32RES) \
	prohibit_use_truncate.o

EXTENSION = prohibit_use_truncate

DATA = prohibit_use_truncate--1.0.sql

REGRESS = prohibit_use_truncate

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/prohibit_use_truncate
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
