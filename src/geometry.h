/*
 * geometry.h
 *
 *  Created on: Jan 6, 2010
 *      Author: Mark
 */

#ifndef GEOMETRY_H_
#define GEOMETRY_H_

#define TRI_HYPOTENUS				0x01
#define TRI_LEG						0x02
#define PLY_SIDE					0x03
#define PLY_APOTHEM					0x04
#define PLY_RADIUS					0x05
#define	CRL_RADIUS					0x06
#define CRL_DIAMETER				0x07

class point
{
public:
	int X;
	int Y;
};

int GetDistance(point A, point B);
point FindMidpoint(point A, point B);

float FindAreaFromKnown(int known, float known_value, float parameter);
float FindAreaFromKnown(int known, float known_value, float parameter, bool show_work);

float LatAreaOfPyramid( float height, float base, bool show_work);

float Prism_Volume( float base, float hieght);
float Prism_Volume( float base, float hieght, bool show_work);

float Cylinder_Volume( float radius, float height);
float Cylinder_Volume( float radius, float height, bool show_work);

float Pyramid_Volume( float basearea, float height);
float Pyramid_Volume( float basearea, float height, bool show_work);

float Cone_Volume( float baseradius, float height);
float Cone_Volume( float baseradius, float height, bool show_work);

float Sphere_SurfaceArea( float radius);
float Sphere_SurfaceArea( float radius, bool show_work);

float Sphere_Volume( float radius); 
float Sphere_Volume( float radius, bool show_work);

#endif /* GEOMETRY_H_ */
