CFLAGS = \
-I$(GECKO_OBJ)/dist/stl_wrappers -I$(GECKO_OBJ)/dist/system_wrappers \
-include $(GECKO_ROOT)/config/gcc_hidden.h \
-DDEBUG -D_DEBUG -DTRACING \
-DOS_POSIX=1 \
-DOS_LINUX=1 \
-DUSE_FAKE_MEDIA_STREAMS \
-DUSE_FAKE_PCOBSERVER \
-DNR_SOCKET_IS_VOID_PTR \
-DHAVE_STRDUP \
-DMOZ_GLUE_IN_PROGRAM \
-DNO_NSPR_10_SUPPORT \
-DNDEBUG \
-DTRIMMED \
-DMOZILLA_CLIENT \
-fPIC \
-include $(GECKO_OBJ)/mozilla-config.h \
-MD \
-MP \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Werror=int-to-pointer-cast \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wcast-align \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-g \
-Os \
-freorder-blocks \
-fomit-frame-pointer

LFLAGS = \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Werror=int-to-pointer-cast \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wcast-align \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-DNDEBUG \
-DTRIMMED \
-g \
-Os \
-freorder-blocks \
-fomit-frame-pointer \
-lpthread \
-Wl,-z,noexecstack \
-Wl,-z,text \
-Wl,--build-id \
-B $(GECKO_OBJ)/build/unix/gold \
-Wl,-rpath-link,$(GECKO_OBJ)/dist/bin \
-Wl,-rpath-link,/usr/local/lib \
-L$(GECKO_OBJ)/dist/sdk/lib \
-lxul \
-lmozalloc \
-lcrmf \
-lnspr4 \
-lplc4 \
-lplds4 \
-lnss3 \
-lnssutil3 \
-lsmime3 \
-lssl3 \
-lplds4 \
-lxpcomglue_s \
-lasound \
-lX11 \
-lgtk-x11-2.0 \
-latk-1.0 \
-lgio-2.0 \
-lpangoft2-1.0 \
-lfreetype \
-lfontconfig \
-lgdk-x11-2.0 \
-lpangocairo-1.0 \
-lgdk_pixbuf-2.0 \
-lpango-1.0 \
-lcairo \
-lgobject-2.0 \
-lglib-2.0 \
-lgthread-2.0 \
-lXrender \
-Wl,--whole-archive \
-lmemory \
-lmozglue \
-Wl,--no-whole-archive \
-rdynamic \
-ldl

