/*
 * geometry.cpp
 *
 *  Created on: Feb 26, 2010
 *      Author: Mark
 */

#include <stdio.h>
#include "geometry.h"
#include <math.h>
#include "../mathhelper.h"

#include <iostream>

using namespace std;

int GetDistance(point A, point B)
{
	int answer;
	int group1, group2;
	group1 = A.X - B.X; //Subtract Xs
	group2 = A.Y - B.Y; //Subtract Ys
	group1 = group1 * group1; //Square X
	group2 = group2 * group2; //Square Y
	answer = group1 + group2; //Add X and Y together
	answer = (int) sqrt(answer); //Find square root of sum
	return answer;
}

point FindMidpoint(point A, point B)
{
	point answer;
	answer.X = (B.X - A.X)/2;
	answer.Y = (B.Y - A.Y)/2;
	return answer;
}

// Polygon functions

float FindPolyAreaFromSide(float sidelength, int number_of_sides, bool show_work)
{
	float area, base, angle, apothem;
	
	base = sidelength / 2;
	if ( show_work == true)
	{
	  cout << "base = " << sidelength << " / 2" << endl;
	  cout << "base = " << sidelength / 2 << endl << endl;
	}
	
	angle = static_cast<float>(360 / 2 ) / number_of_sides;
	if ( show_work == true)
	{
	  cout << "angle = (360 / 2) / " << number_of_sides << endl;
	  cout << "angle = " << 360 / 2 << " / " << number_of_sides << endl;
	  cout << "angle = " << static_cast<float>(360 / 2) / number_of_sides << endl << endl;
	}
	
	apothem = base / tan(degToRad(angle));
	if ( show_work == true) 
	{
	  cout << "apothem = " << base << " / tan (" << angle << ")" << endl;
	  cout << "apothem = " << base << " / " << tan(degToRad(angle)) << endl;
	  cout << "apothem = " << base / tan(degToRad(angle)) << endl << endl;
	}
	
	area = (base * apothem) * number_of_sides;
	if ( show_work == true)
	{
	  cout << "area = (" << base << " * " << apothem << ") * " << number_of_sides << endl;
	  cout << "area = " << base * apothem << " * " << number_of_sides << endl;
	  cout << "area = " << (base * apothem) * number_of_sides << endl << endl;
	}
	
	return area;
}

float FindPolyAreaFromRadius(float radiuslength, int number_of_sides, bool show_work)
{
	float area, base, angle, apothem;
	
	angle = static_cast<float>(360 / 2 ) / number_of_sides;
	if ( show_work == true)
	{
	  cout << "angle = (360 / 2) / " << number_of_sides << endl;
	  cout << "angle = " << 360 / 2 << " / " << number_of_sides << endl;
	  cout << "angle = " << static_cast<float>(360 / 2) / number_of_sides << endl << endl;
	}
	
	base = sin(degToRad(angle)) * radiuslength;
	if ( show_work == true) 
	{
	  cout << "base = sin(" << angle << ") * " << radiuslength << endl;
	  cout << "base = " << sin(degToRad(angle)) << " * " << radiuslength << endl;
	  cout << "base = " << sin(degToRad(angle)) * radiuslength << endl << endl;
	}
	
	apothem = cos(degToRad(angle)) * radiuslength;
	if ( show_work == true) 
	{
	  cout << "apothem = cos(" << angle << ") * " << radiuslength << endl;
	  cout << "apothem = " << cos(degToRad(angle)) << " * " << radiuslength << endl;
	  cout << "apothem = " << cos(degToRad(angle)) * radiuslength << endl << endl;
	}
	
	area = (base * apothem) * number_of_sides;
	if ( show_work == true)
	{
	  cout << "area = (" << base << " * " << apothem << ") * " << number_of_sides << endl;
	  cout << "area = " << base * apothem << " * " << number_of_sides << endl;
	  cout << "area = " << (base * apothem) * number_of_sides << endl << endl;
	}
	return area;
}

int FindPolyAreaFromRadius(float radiuslength, int number_of_sides)
{
	FindPolyAreaFromRadius(radiuslength, number_of_sides, false);
}

float FindPolyAreaFromApothem(float apothemlength, int number_of_sides, bool show_work)
{
	float area, base, angle, apothem;	 
	apothem = apothemlength;
	
	angle = static_cast<float>(360 / 2 ) / number_of_sides;
	if ( show_work == true)
	{
	  cout << "angle = (360 / 2) / " << number_of_sides << endl;
	  cout << "angle = " << 360 / 2 << " / " << number_of_sides << endl;
	  cout << "angle = " << static_cast<float>(360 / 2) / number_of_sides << endl << endl;
	}
	
	base = tan(degToRad(angle)) * apothem;
	if ( show_work == true) 
	{
	  cout << "base = tan(" << angle << ") * " << apothem << endl;
	  cout << "base = " << tan(degToRad(angle)) << " * " << apothem << endl;
	  cout << "base = " << tan(degToRad(angle)) * apothem << endl << endl;
	}
	
	area = (base * apothem) * number_of_sides;
	if ( show_work == true)
	{
	  cout << "area = (" << base << " * " << apothem << ") * " << number_of_sides << endl;
	  cout << "area = " << base * apothem << " * " << number_of_sides << endl;
	  cout << "area = " << (base * apothem) * number_of_sides << endl << endl;
	}
	return area;
}

float FindPolyAreaFromApothem(float apothemlength, int number_of_sides)
{
	FindPolyAreaFromApothem(apothemlength, number_of_sides, false);
}

float FindAreaFromKnown(int known, float known_value, float parameter, bool show_work)
{
	/* The parameter variable is used for other values required for specific operations
	 *
	 * For example, the FindPolyArea functions use it for the # of sides
	 * in the polygon.
	 *
	 */
	float result;

	switch(known)
	{
		case TRI_HYPOTENUS:
			result = NULL;
			break;
		case TRI_LEG:
			result = NULL;
			break;
		case PLY_SIDE:
			result = FindPolyAreaFromSide(known_value, parameter, show_work);
			break;
		case PLY_RADIUS:
			result = FindPolyAreaFromRadius(known_value, parameter, show_work);
			break;
		case PLY_APOTHEM:
			result = FindPolyAreaFromApothem(known_value, parameter, show_work);
			break;
	}

	return result;
}

float FindAreaFromKnown(int known, float known_value, float parameter)
{
	FindAreaFromKnown(known, known_value, parameter, false);
}

float LatAreaOfPyramid( float height, float base, bool show_work)
{
	float slant_height, latarea;
	slant_height = (height * height) + (base/2) * (base/2);
	if (show_work == true)
	{
	  cout << "slant height = sqrt(" << height << " squared + (" << base << "/2) squared)" << endl;
	  cout << "slant height = sqrt(" << height * height << " + " << base/2 << " squared)" << endl;
	  cout << "slant height = sqrt(" << height * height << " + " << (base/2) * (base/2) << ")" << endl;
	  cout << "slant hieght = sqrt(" << slant_height << ")" << endl;
	  cout << "slant hieght = " << sqrt(slant_height) << endl << endl;
	}
	slant_height = sqrt(slant_height);
	latarea = (base * slant_height)/2;
	if (show_work == true)
	{
	  cout << "Lateral area = " << base << " * " << slant_height << "/2" << endl;
	  cout << "Lateral area = " << base * slant_height << "/2" << endl;
	  cout << "Lateral area = " << base * slant_height /2 << endl << endl;
	}
	
	return latarea;
}

float Prism_Volume( float base, float height, bool show_work)
{
	float volume;
	volume = base * height;
	if ( show_work == true )
	{
	  cout << "Volume = " << base << " * " << height << endl;
	  cout << "Volume = " << base * height << endl << endl;
	}
	
	return volume;
}

float Prism_Volume( float base, float height)
{
	return Prism_Volume(base, height, false);
}

float Cylinder_Volume( float radius, float height, bool show_work)
{
	float volume;
	volume = (M_PI * (radius * radius)) * height;
	if ( show_work == true)
	{
	  cout << "Volume = Pi * " << radius << " squared * " << height << endl;
	  cout << "Volume = Pi * " << radius * radius << " * " << height << endl;
	  cout << "Volume = " << M_PI * (radius * radius) << " * " << height << endl;
	  cout << "Volume = " << (M_PI * (radius * radius)) * height << endl << endl;
	}
	return volume;
}

float Cylinder_Volume( float radius, float height)
{
	return Cylinder_Volume(radius, height, false);
}

float Pyramid_Volume(float basearea, float height, bool show_work)
{
	float volume;
	volume = (basearea * height)/3;
	if ( show_work == true)
	{
            cout << "Volume = (" << basearea << " * " << height << ")/3" << endl;
            cout << "Volume = (" << basearea * height << " /3" << endl;
            cout << "Volume = " << (basearea * height) /3 << endl << endl;
        }
        return volume;
}

float Pyramid_Volume(float basearea, float height)
{
        return Pyramid_Volume(basearea, height, false);
}

float Cone_Volume(float baseradius, float height, bool show_work)
{
        float volume;
        volume = ((M_PI * pow(baseradius, 2)) * height) /3;
        if (show_work == false)
        {
            cout << "Volume = ((Pi * " << baseradius << " squared) * " << height << ")/3 " << endl;
            cout << "Volume = ((Pi * " << pow(baseradius, 2) << ") * " << height << ")/3 " << endl;
            cout << "Volume = (" << M_PI * pow(baseradius, 2) << " * " << height << ")/3" << endl;
            cout << "Volume = " << ((M_PI * pow(baseradius, 2)) * height) << " /3" << endl;
            cout << "Volume = " << ((M_PI * pow(baseradius, 2)) * height)/3 << endl << endl;
        }
        return volume;
}

float Cone_Volume(float baseradius, float height)
{
        return Cone_Volume(baseradius, height, false);
}

float Sphere_SurfaceArea(float radius, bool show_work)
{
        float surfacearea;
        surfacearea = (M_PI * pow(radius, 2)) * 4;
        if (show_work == true)
        {
            cout << "Surface Area = (Pi * " << radius << " squared) * 4" << endl;
            cout << "Surface Area = (Pi * " << pow(radius, 2) << ") * 4" << endl;
            cout << "Surface Area = " << M_PI * pow(radius, 2) << " * 4" << endl;
            cout << "Surface Area = " << (M_PI * pow(radius, 2)) * 4 << endl << endl;
        }
        return surfacearea;
}

float Sphere_SurfaceArea(float radius)
{
        Sphere_SurfaceArea(radius, false);
}

float Sphere_Volume(float radius, bool show_work)
{
        float volume;
        volume = (4/3) * (M_PI * pow(radius,3));
        if (show_work == true)
        {
            cout << "Volume = (4/3) * (Pi * " << radius << " cubed" << endl;
            cout << "Volume = " << 4/3 << " * (Pi * " << radius << " cubed" << endl;
            cout << "Volume = " << 4/3 << " * (Pi * " << pow(radius, 3) << endl;
            cout << "Volume = " << 4/3 << " * " << M_PI * pow(radius,3) << endl;
            cout << "Volume = " << (4/3) * (M_PI * pow(radius , 3)) << endl << endl;
        }
        return volume;
}

float Sphere_Volume(float radius)
{
        Sphere_Volume(radius, false);
}
