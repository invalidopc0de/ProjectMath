/*
 * mathhelper.h
 *
 *  Created on: Jun 4, 2010
 *      Author: Mark
 */

#ifndef MATHHELPER_H_
#define MATHHELPER_H_

#include <math.h>

float RadiansToDegrees(float radians)
{
    return radians * (180 / (M_PI * radians));
}


float degToRad(float degree)
{
        float radian = 0;
        radian = degree * (M_PI/180);
        return radian;
}

#endif /* GEOMETRY_H_ */
