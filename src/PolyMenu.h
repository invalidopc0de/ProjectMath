/*
 * PolyMenu.h
 *
 *  Created on: Jun 3, 2010
 *      Author: Mark
 */

#ifndef POLYMENU_H_
#define POLYMENU_H_

#include <iostream>
#include <cstdlib>
#include "geometry.h"

using namespace std;

void showRegularPolygonMenu();

void showPolyMenu()
{
	system("cls");
	cout << "Please select what want to solve for. \n";
	cout << "--------------------------------------\n";
	cout << "1. Area of a regular polygon          \n";
	cout << "Selection:";
	int sel;
	cin >> sel;
	switch (sel)
	{
		case 1:
			showRegularPolygonMenu();
			break;
		default:
			break;
	}
}

void showRegularPolygonMenu()
{
	system("cls");
	cout << "Please select what you know. \n";
	cout << "-----------------------------\n";
	cout << "1. Side Length 			  \n";
	cout << "2. Radius Length 			  \n";
	cout << "3. Apothem Length 			  \n";
	cout << "Selection:";
	int sel;
	cin >> sel;
	switch (sel)
	{
		case 1:
			cout << "Please enter the # of sides of this polygon:";
			int sides;
			cin >> sides;
			cout << "Please enter the side length:";
			int sidelength;
			cin >> sidelength;
                        int answer;
                        answer = FindAreaFromKnown(PLY_SIDE, sidelength, sides);
			cout << "The area is: " << answer;
			cout << "\nPress enter to continue...\n";
			int exit;
			cin >> exit;
			break;
		default:
			break;
	}
}
#endif /* POLYMENU_H_ */
