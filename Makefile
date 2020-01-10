NAME_SRV = socket2-srv

CXXFLAGS =
LDFLAGS =

include ../Make-9.3.3.in

test: bin/${NAME_SRV}
	LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(SDKTARGETSYSROOT)/usr/lib $(LOADER) bin/${NAME_SRV} test -v4
