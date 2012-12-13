######################################################################
# Automatically generated by qmake (2.01a) Thu Dec 13 16:05:34 2012
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += . \
              BRDFs \
              build \
              Cameras \
              GeometricObjects \
              Lights \
              Materials \
              Tracers \
              Utilities \
              World
INCLUDEPATH += . \
               World \
               Utilities \
               Tracers \
               GeometricObjects \
               Cameras \
               Lights \
               BRDFs \
               Materials \
               build

# Input
HEADERS += BRDFs/BRDF.h \
           BRDFs/Lambertian.h \
           Cameras/Camera.h \
           Cameras/Pinhole.h \
           GeometricObjects/GeometricObject.h \
           GeometricObjects/Plane.h \
           GeometricObjects/Sphere.h \
           Lights/Ambient.h \
           Lights/Directional.h \
           Lights/Light.h \
           Materials/Material.h \
           Materials/Matte.h \
           Tracers/MultipleObjects.h \
           Tracers/RayCast.h \
           Tracers/SingleSphere.h \
           Tracers/Tracer.h \
           Utilities/Constants.h \
           Utilities/Maths.h \
           Utilities/Matrix.h \
           Utilities/Normal.h \
           Utilities/Point2D.h \
           Utilities/Point3D.h \
           Utilities/Ray.h \
           Utilities/RGBColor.h \
           Utilities/ShadeRec.h \
           Utilities/Vector3D.h \
           World/ViewPlane.h \
           World/World.h \
           build/BuildShadedObjects.cpp
SOURCES += main.cpp \
           BRDFs/BRDF.cpp \
           BRDFs/Lambertian.cpp \
           build/BuildShadedObjects.cpp \
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