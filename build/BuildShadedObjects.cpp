/*
 void
World::build(void) {
        vp.set_hres(200);
        vp.set_vres(200);
        vp.set_pixel_size(1.0);

        background_color = red;
        tracer_ptr = new MultipleObjects(this);
		
		Sphere *sphere = new Sphere() ;
        sphere->set_center(0.0);
        sphere->set_radius(5.0);
		sphere->set_color(white);
		add_object(sphere);
	
	
		Sphere *sphere_ptr2 = new Sphere(Point3D(0, 5, 0), 5);
		sphere_ptr2->set_color(1, 1, 0);	// yellow
		add_object(sphere_ptr2);

        image = new QImage(vp.vres , vp.hres , QImage::Format_RGB32);
}
 */

 
 


void 												
World::build(void) {
	vp.set_hres(200);
	vp.set_vres(200);
	
	background_color = black;
	tracer_ptr = new MultipleObjects(this);
	
		// use access functions to set center and radius for this sphere
	
	Sphere* sphere_ptr = new Sphere;
	sphere_ptr->set_center(0, -25, 0);
	sphere_ptr->set_radius(80.0);
	sphere_ptr->set_color(1, 0, 0);  // red
	add_object(sphere_ptr);
	
		// use a constructor to set center and radius for this sphere
	
	sphere_ptr = new Sphere(Point3D(0, 30, 0), 60);
	sphere_ptr->set_color(1, 1, 0);	// yellow
	add_object(sphere_ptr);
	
	
	Plane* plane_ptr = new Plane(Point3D(0.0), Normal(0, 1, 1));
	plane_ptr->set_color(0.0, 0.25, 0.0);	// dark green 
	add_object(plane_ptr);
	image = new QImage(vp.vres , vp.hres , QImage::Format_RGB32);

}




