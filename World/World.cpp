// this file contains the definition of the World class

//#include "wxraytracer.h"

#include "World.h"
#include "Constants.h"

// geometric objects

#include "Plane.h"
#include "Sphere.h"

// tracers

#include "MultipleObjects.h"
#include "RayCast.h"

// cameras

#include "Pinhole.h"

// lights

#include "Directional.h"

// materials

#include "Matte.h"

// utilities

#include "Vector3D.h"
#include "Point3D.h"
#include "Normal.h"
#include "ShadeRec.h"
#include "Maths.h"

// build functions

#include "BuildShadedObjects.cpp"

//Qt
#include <QRgb>
#include <iostream>


// -------------------------------------------------------------------- default constructor

// tracer_ptr is set to NULL because the build functions will always construct the appropriate tracer
// ambient_ptr is set to a default ambient light because this will do for most scenes
// camera_ptr is set to NULL because the build functions will always have to construct a camera
// and set its parameters

World::World(void)
	:  	background_color(black),
		tracer_ptr(NULL),
		ambient_ptr(new Ambient),
		camera_ptr(NULL)
{
	image = NULL;
}



//------------------------------------------------------------------ destructor

World::~World(void) {	
	
	if(tracer_ptr) {
		delete tracer_ptr;
		tracer_ptr = NULL;
	}
	
		
	if (ambient_ptr) {
		delete ambient_ptr;
		ambient_ptr = NULL;
	}
			
		
	if (camera_ptr) {
		delete camera_ptr;
		camera_ptr = NULL;
	}
	
	delete_objects();	
	delete_lights();				
}


//------------------------------------------------------------------ render_scene

// This uses orthographic viewing along the zw axis

void 												
World::render_scene(void) const {

	/*
	RGBColor	pixel_color;	 	
	Ray			ray;					
	int 		hres 	= vp.hres;
	int 		vres 	= vp.vres;
	float		s		= vp.s;
	float		zw		= 100.0;				// hardwired in

	ray.d = Vector3D(0, 0, -1);
	
	for (int r = 0; r < vres; r++)			// up
		for (int c = 0; c <= hres-1; c++) {	// across 					
			ray.o = Point3D(s * (c - hres / 2.0 + 0.5), s * (r - vres / 2.0 + 0.5), zw);
			pixel_color = tracer_ptr->trace_ray(ray);
			display_pixel(r, c, pixel_color);
		}	
	 
	 
	 */
	
	
	RGBColor	pixel_color;	 	
	Ray			ray;					
	int 		hres 	= vp.hres;
	int 		vres 	= vp.vres;
	float		s		= vp.s;
	float		zw		= 100.0;				// hardwired in
	int           n = (int)sqrt( (float)vp.num_samples);
	Point2D pp;
	
	
	
	ray.d = Vector3D(0, 0, -1);
	
	for (int r = 0; r < vres; r++)			// up
		for (int c = 0; c <= hres-1; c++) {	// across
			pixel_color = black;
			
			for(int p = 0 ; p < n; p++)
			{
				for(int q = 0 ; q < n; q++)
				{
					pp.x = vp.s * (c - 0.5 * vp.hres + (q + 0.5) /n);
					pp.y = vp.s * (r -0.5 *  vp.vres + ( p + 0.5)/n);
					
					ray.o = Point3D(pp.x , pp.y , zw);
					pixel_color = tracer_ptr->trace_ray(ray);
					display_pixel(r, c, pixel_color);
				}
			}
		}	

	
}  


// ------------------------------------------------------------------ clamp

RGBColor
World::max_to_one(const RGBColor& c) const  {
	float max_value = max(c.r, max(c.g, c.b));
	
	if (max_value > 1.0)
		return (c / max_value);
	else
		return (c);
}


// ------------------------------------------------------------------ clamp_to_color
// Set color to red if any component is greater than one

RGBColor
World::clamp_to_color(const RGBColor& raw_color) const {
	RGBColor c(raw_color);
	
	if (raw_color.r > 1.0 || raw_color.g > 1.0 || raw_color.b > 1.0) {
		c.r = 1.0; c.g = 0.0; c.b = 0.0;
	}
		
	return (c);
}


// ---------------------------------------------------------------------------display_pixel
// raw_color is the pixel color computed by the ray tracer
// its RGB floating point components can be arbitrarily large
// mapped_color has all components in the range [0, 1], but still floating point
// display color has integer components for computer display
// the Mac's components are in the range [0, 65535]
// a PC's components will probably be in the range [0, 255]
// the system-dependent code is in the function convert_to_display_color
// the function SetCPixel is a Mac OS function


void
World::display_pixel(const int row, const int column, const RGBColor& raw_color) const {
	RGBColor mapped_color;

	if (vp.show_out_of_gamut)
		mapped_color = clamp_to_color(raw_color);
	else
		mapped_color = max_to_one(raw_color);
	
	if (vp.gamma != 1.0)
		mapped_color = mapped_color.powc(vp.inv_gamma);
	
   //have to start from max y coordinate to convert to screen coordinates
   int x = column;
   int y = vp.vres - row - 1;

   //paintArea->setPixel(x, y, (int)(mapped_color.r * 255),
   //                          (int)(mapped_color.g * 255),
   //                          (int)(mapped_color.b * 255));

   QRgb value;
   value = qRgb(mapped_color.r * 255,mapped_color.g * 255 ,mapped_color.b * 255);
   image->setPixel(x,y,value);
}

// ----------------------------------------------------------------------------- hit_objects

ShadeRec									
World::hit_objects(const Ray& ray) {
	
	ShadeRec	sr(*this); 
	double		t;
	Normal normal;
	Point3D local_hit_point;
	float		tmin 			= kHugeValue;
	int 		num_objects 	= objects.size();
	
	for (int j = 0; j < num_objects; j++)
		if (objects[j]->hit(ray, t, sr) && (t < tmin)) {
			sr.hit_an_object	= true;
			std::cout<<"numObjcts:"<<num_objects<<"hit:"<<j<<std::endl;
			tmin 				= t;
			sr.color			= objects[j]->get_color();
			sr.hit_point 		= ray.o + t * ray.d;
			normal 				= sr.normal;
			local_hit_point	 	= sr.local_hit_point;
		}
	
	if(sr.hit_an_object) {
		std::cout<<"hit_and_object"<<std::endl;
		sr.t = tmin;
		sr.normal = normal;
		sr.local_hit_point = local_hit_point;
	}
	
	return(sr); 
	
	/*
	ShadeRec	sr(*this); 
	double		t;
	Normal normal;
	Point3D local_hit_point;
	float		tmin 			= kHugeValue;
	int 		num_objects 	= objects.size();
	
	for (int j = 0; j < num_objects; j++)
		if (objects[j]->hit(ray, t, sr) && (t < tmin)) {
			sr.hit_an_object	= true;
			tmin 				= t;
			sr.material_ptr     = objects[j]->get_material();
			sr.hit_point 		= ray.o + t * ray.d;
			normal 				= sr.normal;
			local_hit_point	 	= sr.local_hit_point;
		}
  
	if(sr.hit_an_object) {
		sr.t = tmin;
		sr.normal = normal;
		sr.local_hit_point = local_hit_point;
	}
		
	return(sr);  
	 */
}



//------------------------------------------------------------------ delete_objects

// Deletes the objects in the objects array, and erases the array.
// The objects array still exists, because it's an automatic variable, but it's empty 

void
World::delete_objects(void) {
	int num_objects = objects.size();
	
	for (int j = 0; j < num_objects; j++) {
		delete objects[j];
		objects[j] = NULL;
	}	
	
	objects.erase (objects.begin(), objects.end());
}


//------------------------------------------------------------------ delete_lights

void
World::delete_lights(void) {
	int num_lights = lights.size();
	
	for (int j = 0; j < num_lights; j++) {
		delete lights[j];
		lights[j] = NULL;
	}	
	
	lights.erase (lights.begin(), lights.end());
}

	// new Functions for Qt
void World::save_image()
{
    image->save("/Users/chrysl666/Desktop/teste.png");
    std::cout<<"done";
}

QImage World::getImage()
{
    return (*image);
}


ShadeRec
World::hit_bare_bones_objects(const Ray& ray) 
{
		//World wr = *this;
	ShadeRec	sr(*this); 
	double	t;
	double tmin			= kHugeValue;
	int	   num_objects	=	objects.size();
	std::cout <<"hitbarebones:"<<num_objects<<std::endl;
	for (int j = 0 ; j < num_objects ; j++)
	{
		if( objects[j]->hit(ray,t ,sr) && (t<tmin) )
		   {
			   sr.hit_an_object = true;
			   tmin				= t ;
			   std::cout <<"hit2"<<std::endl;
			   sr.color			= objects[j]->get_color();
		   }
		if(sr.hit_an_object) {
			sr.t = tmin;
				//sr.normal = normal;
				//sr.local_hit_point = local_hit_point;
		}
		   return(sr);
	}
}