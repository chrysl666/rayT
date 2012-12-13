#############################################################################
# Makefile for building: raT2.app/Contents/MacOS/raT2
# Generated by qmake (2.01a) (Qt 4.7.4) on: Thu Dec 13 15:48:04 2012
# Project:  raT2.pro
# Template: app
# Command: /Users/chrysl666/QtSDK/Desktop/Qt/474/gcc/bin/qmake -o Makefile raT2.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -g -gdwarf-2 -arch x86_64 -Xarch_x86_64 -mmacosx-version-min=10.5 -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -g -gdwarf-2 -arch x86_64 -Xarch_x86_64 -mmacosx-version-min=10.5 -Wall -W $(DEFINES)
INCPATH       = -I../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/default -I. -I../../../../QtSDK/Desktop/Qt/474/gcc/lib/QtCore.framework/Versions/4/Headers -I../../../../QtSDK/Desktop/Qt/474/gcc/include/QtCore -I../../../../QtSDK/Desktop/Qt/474/gcc/lib/QtGui.framework/Versions/4/Headers -I../../../../QtSDK/Desktop/Qt/474/gcc/include/QtGui -I../../../../QtSDK/Desktop/Qt/474/gcc/include -I. -IWorld -IUtilities -ITracers -IGeometricObjects -ICameras -ILights -IBRDFs -IMaterials -Ibuild -I. -F/Users/chrysl666/QtSDK/Desktop/Qt/474/gcc/lib
LINK          = g++
LFLAGS        = -headerpad_max_install_names -arch x86_64 -Xarch_x86_64 -mmacosx-version-min=10.5
LIBS          = $(SUBLIBS) -F/Users/chrysl666/QtSDK/Desktop/Qt/474/gcc/lib -L/Users/chrysl666/QtSDK/Desktop/Qt/474/gcc/lib -framework QtGui -framework QtCore 
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /Users/chrysl666/QtSDK/Desktop/Qt/474/gcc/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = 
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.4

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		BRDFs/BRDF.cpp \
		BRDFs/Lambertian.cpp \
		Cameras/Camera.cpp \
		Cameras/Pinhole.cpp \
		GeometricObjects/GeometricObject.cpp \
		GeometricObjects/Plane.cpp \
		GeometricObjects/Sphere.cpp \
		Lights/Ambient.cpp \
		Lights/Directional.cpp \
		Lights/Light.cpp \
		Materials/Material.cpp \
		Materials/Matte.cpp \
		Tracers/MultipleObjects.cpp \
		Tracers/RayCast.cpp \
		Tracers/SingleSphere.cpp \
		Tracers/Tracer.cpp \
		Utilities/Matrix.cpp \
		Utilities/Normal.cpp \
		Utilities/Point2D.cpp \
		Utilities/Point3D.cpp \
		Utilities/Ray.cpp \
		Utilities/RGBColor.cpp \
		Utilities/ShadeRec.cpp \
		Utilities/Vector3D.cpp \
		World/ViewPlane.cpp \
		World/World.cpp 
OBJECTS       = main.o \
		BRDF.o \
		Lambertian.o \
		Camera.o \
		Pinhole.o \
		GeometricObject.o \
		Plane.o \
		Sphere.o \
		Ambient.o \
		Directional.o \
		Light.o \
		Material.o \
		Matte.o \
		MultipleObjects.o \
		RayCast.o \
		SingleSphere.o \
		Tracer.o \
		Matrix.o \
		Normal.o \
		Point2D.o \
		Point3D.o \
		Ray.o \
		RGBColor.o \
		ShadeRec.o \
		Vector3D.o \
		ViewPlane.o \
		World.o
DIST          = ../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac-g++.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_pre.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/dwarf2.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/debug.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_post.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/x86_64.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/objective_c.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/rez.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/sdk.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf \
		raT2.pro
QMAKE_TARGET  = raT2
DESTDIR       = 
TARGET        = raT2.app/Contents/MacOS/raT2

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-gdwarf-2 \
		-arch \
		x86_64 \
		-Xarch_x86_64 \
		-mmacosx-version-min=10.5 \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile raT2.app/Contents/PkgInfo raT2.app/Contents/Resources/empty.lproj raT2.app/Contents/Info.plist $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) raT2.app/Contents/MacOS/ || $(MKDIR) raT2.app/Contents/MacOS/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: raT2.pro  ../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/default/qmake.conf ../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac-g++.conf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_pre.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/dwarf2.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/debug.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_post.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/x86_64.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/objective_c.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/rez.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/sdk.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf \
		../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf
	$(QMAKE) -o Makefile raT2.pro
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/unix.conf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac.conf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/common/mac-g++.conf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/qconfig.pri:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/modules/qt_webkit_version.pri:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_functions.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt_config.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/exclusive_builds.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_pre.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_pre.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/dwarf2.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/debug.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/default_post.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/default_post.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/x86_64.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/objective_c.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/warn_on.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/qt.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/unix/thread.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/moc.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/rez.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/mac/sdk.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/resources.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/uic.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/yacc.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/lex.prf:
../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -o Makefile raT2.pro

raT2.app/Contents/PkgInfo: 
	@$(CHK_DIR_EXISTS) raT2.app/Contents || $(MKDIR) raT2.app/Contents 
	@$(DEL_FILE) raT2.app/Contents/PkgInfo
	@echo "APPL????" >raT2.app/Contents/PkgInfo
raT2.app/Contents/Resources/empty.lproj: 
	@$(CHK_DIR_EXISTS) raT2.app/Contents/Resources || $(MKDIR) raT2.app/Contents/Resources 
	@touch raT2.app/Contents/Resources/empty.lproj
	
raT2.app/Contents/Info.plist: 
	@$(CHK_DIR_EXISTS) raT2.app/Contents || $(MKDIR) raT2.app/Contents 
	@$(DEL_FILE) raT2.app/Contents/Info.plist
	@sed -e "s,@ICON@,,g" -e "s,@EXECUTABLE@,raT2,g" -e "s,@TYPEINFO@,????,g" ../../../../QtSDK/Desktop/Qt/474/gcc/mkspecs/default/Info.plist.app >raT2.app/Contents/Info.plist
dist: 
	@$(CHK_DIR_EXISTS) .tmp/raT21.0.0 || $(MKDIR) .tmp/raT21.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/raT21.0.0/ && $(COPY_FILE) --parents BRDFs/BRDF.h BRDFs/Lambertian.h Cameras/Camera.h Cameras/Pinhole.h GeometricObjects/GeometricObject.h GeometricObjects/Plane.h GeometricObjects/Sphere.h Lights/Ambient.h Lights/Directional.h Lights/Light.h Materials/Material.h Materials/Matte.h Tracers/MultipleObjects.h Tracers/RayCast.h Tracers/SingleSphere.h Tracers/Tracer.h Utilities/Constants.h Utilities/Maths.h Utilities/Matrix.h Utilities/Normal.h Utilities/Point2D.h Utilities/Point3D.h Utilities/Ray.h Utilities/RGBColor.h Utilities/ShadeRec.h Utilities/Vector3D.h World/ViewPlane.h World/World.h build/BuildShadedObjects.cpp .tmp/raT21.0.0/ && $(COPY_FILE) --parents main.cpp BRDFs/BRDF.cpp BRDFs/Lambertian.cpp Cameras/Camera.cpp Cameras/Pinhole.cpp GeometricObjects/GeometricObject.cpp GeometricObjects/Plane.cpp GeometricObjects/Sphere.cpp Lights/Ambient.cpp Lights/Directional.cpp Lights/Light.cpp Materials/Material.cpp Materials/Matte.cpp Tracers/MultipleObjects.cpp Tracers/RayCast.cpp Tracers/SingleSphere.cpp Tracers/Tracer.cpp Utilities/Matrix.cpp Utilities/Normal.cpp Utilities/Point2D.cpp Utilities/Point3D.cpp Utilities/Ray.cpp Utilities/RGBColor.cpp Utilities/ShadeRec.cpp Utilities/Vector3D.cpp World/ViewPlane.cpp World/World.cpp .tmp/raT21.0.0/ && (cd `dirname .tmp/raT21.0.0` && $(TAR) raT21.0.0.tar raT21.0.0 && $(COMPRESS) raT21.0.0.tar) && $(MOVE) `dirname .tmp/raT21.0.0`/raT21.0.0.tar.gz . && $(DEL_FILE) -r .tmp/raT21.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) -r raT2.app
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp World/World.h \
		World/ViewPlane.h \
		Utilities/RGBColor.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

BRDF.o: BRDFs/BRDF.cpp Utilities/Constants.h \
		Utilities/RGBColor.h \
		BRDFs/BRDF.h \
		Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/ShadeRec.h \
		Utilities/Point3D.h \
		Utilities/Normal.h \
		Utilities/Ray.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o BRDF.o BRDFs/BRDF.cpp

Lambertian.o: BRDFs/Lambertian.cpp BRDFs/Lambertian.h \
		BRDFs/BRDF.h \
		Utilities/RGBColor.h \
		Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/ShadeRec.h \
		Utilities/Point3D.h \
		Utilities/Normal.h \
		Utilities/Ray.h \
		Utilities/Constants.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Lambertian.o BRDFs/Lambertian.cpp

Camera.o: Cameras/Camera.cpp Cameras/Camera.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Camera.o Cameras/Camera.cpp

Pinhole.o: Cameras/Pinhole.cpp Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		Cameras/Pinhole.h \
		Utilities/Point2D.h \
		World/World.h \
		World/ViewPlane.h \
		Tracers/Tracer.h \
		Utilities/Ray.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Pinhole.o Cameras/Pinhole.cpp

GeometricObject.o: GeometricObjects/GeometricObject.cpp Utilities/Constants.h \
		Utilities/RGBColor.h \
		Materials/Material.h \
		World/World.h \
		World/ViewPlane.h \
		Tracers/Tracer.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o GeometricObject.o GeometricObjects/GeometricObject.cpp

Plane.o: GeometricObjects/Plane.cpp GeometricObjects/Plane.h \
		GeometricObjects/GeometricObject.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		Utilities/Ray.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		Utilities/RGBColor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Plane.o GeometricObjects/Plane.cpp

Sphere.o: GeometricObjects/Sphere.cpp GeometricObjects/Sphere.h \
		GeometricObjects/GeometricObject.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		Utilities/Ray.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		Utilities/RGBColor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Sphere.o GeometricObjects/Sphere.cpp

Ambient.o: Lights/Ambient.cpp Lights/Ambient.h \
		Lights/Light.h \
		Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Ambient.o Lights/Ambient.cpp

Directional.o: Lights/Directional.cpp Lights/Directional.h \
		Lights/Light.h \
		Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		World/World.h \
		World/ViewPlane.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Directional.o Lights/Directional.cpp

Light.o: Lights/Light.cpp Lights/Light.h \
		Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Constants.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Light.o Lights/Light.cpp

Material.o: Materials/Material.cpp Materials/Material.h \
		World/World.h \
		World/ViewPlane.h \
		Utilities/RGBColor.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Material.o Materials/Material.cpp

Matte.o: Materials/Matte.cpp Materials/Matte.h \
		Materials/Material.h \
		World/World.h \
		World/ViewPlane.h \
		Utilities/RGBColor.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h \
		BRDFs/Lambertian.h \
		BRDFs/BRDF.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Matte.o Materials/Matte.cpp

MultipleObjects.o: Tracers/MultipleObjects.cpp Tracers/MultipleObjects.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		World/World.h \
		World/ViewPlane.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o MultipleObjects.o Tracers/MultipleObjects.cpp

RayCast.o: Tracers/RayCast.cpp Tracers/RayCast.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		World/World.h \
		World/ViewPlane.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h \
		Materials/Material.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o RayCast.o Tracers/RayCast.cpp

SingleSphere.o: Tracers/SingleSphere.cpp Tracers/SingleSphere.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		World/World.h \
		World/ViewPlane.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SingleSphere.o Tracers/SingleSphere.cpp

Tracer.o: Tracers/Tracer.cpp Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Tracer.o Tracers/Tracer.cpp

Matrix.o: Utilities/Matrix.cpp Utilities/Matrix.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Matrix.o Utilities/Matrix.cpp

Normal.o: Utilities/Normal.cpp Utilities/Normal.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		Utilities/Point3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Normal.o Utilities/Normal.cpp

Point2D.o: Utilities/Point2D.cpp Utilities/Point2D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Point2D.o Utilities/Point2D.cpp

Point3D.o: Utilities/Point3D.cpp Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Point3D.o Utilities/Point3D.cpp

Ray.o: Utilities/Ray.cpp Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Ray.o Utilities/Ray.cpp

RGBColor.o: Utilities/RGBColor.cpp Utilities/RGBColor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o RGBColor.o Utilities/RGBColor.cpp

ShadeRec.o: Utilities/ShadeRec.cpp Utilities/Constants.h \
		Utilities/RGBColor.h \
		Utilities/ShadeRec.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		Utilities/Normal.h \
		Utilities/Ray.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ShadeRec.o Utilities/ShadeRec.cpp

Vector3D.o: Utilities/Vector3D.cpp Utilities/Vector3D.h \
		Utilities/Matrix.h \
		Utilities/Normal.h \
		Utilities/Point3D.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Vector3D.o Utilities/Vector3D.cpp

ViewPlane.o: World/ViewPlane.cpp World/ViewPlane.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ViewPlane.o World/ViewPlane.cpp

World.o: World/World.cpp World/World.h \
		World/ViewPlane.h \
		Utilities/RGBColor.h \
		Tracers/Tracer.h \
		Utilities/Constants.h \
		Utilities/Ray.h \
		Utilities/Point3D.h \
		Utilities/Matrix.h \
		Utilities/Vector3D.h \
		GeometricObjects/GeometricObject.h \
		Utilities/ShadeRec.h \
		Utilities/Normal.h \
		GeometricObjects/Sphere.h \
		Tracers/SingleSphere.h \
		Cameras/Camera.h \
		Lights/Light.h \
		Lights/Ambient.h \
		GeometricObjects/Plane.h \
		Tracers/MultipleObjects.h \
		Tracers/RayCast.h \
		Cameras/Pinhole.h \
		Utilities/Point2D.h \
		Lights/Directional.h \
		Materials/Matte.h \
		Materials/Material.h \
		BRDFs/Lambertian.h \
		BRDFs/BRDF.h \
		Utilities/Maths.h \
		build/BuildShadedObjects.cpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o World.o World/World.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
