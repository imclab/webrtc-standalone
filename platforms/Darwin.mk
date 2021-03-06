CFLAGS = \
-fvisibility=hidden \
-DOS_POSIX=1 \
-DOS_MACOSX=1 \
-DNR_SOCKET_IS_VOID_PTR \
-DHAVE_STRDUP \
-DNO_NSPR_10_SUPPORT \
-DNO_X11 \
-DMOZILLA_CLIENT \
-DNDEBUG \
-DTRIMMED \
-DUSE_FAKE_MEDIA_STREAMS \
-DUSE_FAKE_PCOBSERVER \
-fPIC \
-Qunused-arguments \
-include $(GECKO_OBJ)/mozilla-config.h \
-MD \
-MP \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wno-c++0x-extensions \
-Wno-extended-offsetof \
-Wno-unknown-warning-option \
-Wno-return-type-c-linkage \
-Wno-mismatched-tags \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-g \
-O3 \
-fomit-frame-pointer

LFLAGS = \
-L$(GECKO_OBJ)/dist/sdk/lib \
-L$(GECKO_OBJ)/dist/lib \
-Qunused-arguments \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wno-c++0x-extensions \
-Wno-extended-offsetof \
-Wno-unknown-warning-option \
-Wno-return-type-c-linkage \
-Wno-mismatched-tags \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-DNO_X11 \
-pipe \
-DNDEBUG \
-DTRIMMED \
-g \
-O3 \
-fomit-frame-pointer \
-o a.out \
-framework Cocoa \
-lobjc \
-framework ExceptionHandling \
-Wl,-executable_path,$(GECKO_OBJ)/dist/bin \
-Wl,-dead_strip \
$(GECKO_OBJ)/dist/sdk/lib/XUL \
-lcrmf \
-lnss3 \
-lunicharutil_external_s \
-lxpcomglue_s \
-lnspr4 \
-lplc4 \
-lplds4 \
-lsmime3 \
-lssl3 \
-lnssutil3 \
-framework AudioToolbox \
-framework AudioUnit \
-framework Carbon \
-framework CoreAudio \
-framework OpenGL \
-framework QTKit \
-framework QuartzCore \
-framework Security \
-framework SystemConfiguration \
-framework IOKit \
-F/System/Library/PrivateFrameworks \
-framework CoreUI \
-framework CoreLocation \
-framework QuartzCore \
-framework Carbon \
-framework CoreAudio \
-framework AudioToolbox \
-framework AudioUnit \
-framework AddressBook \
-framework OpenGL \
-lmozglue \
-lmozalloc

