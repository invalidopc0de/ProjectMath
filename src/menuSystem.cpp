/*
 * menuSystem.cpp
 *
 *  Created on: Jan 7, 2010
 *      Author: Mark
 */

#include <iostream>
#include <cstdlib>
#include "algebra.h"
#include "geometry.h"
#include "PolyMenu.h"

using namespace std;

void help(void);

void calcPDistance(void);
void calcMidPoint(void);

//menu commands

bool showMenu(){
	bool willQuit;
		system("cls");
		cout << "    MENU    \n";
		cout << "------------\n";
		cout << "1. Help\n";
		cout << "2. Compute a Quadratic Equation\n";
		cout << "3. Calculate Exponents\n";
		cout << "4. Calculate Min/Max Value for parabola\n";
		cout << "5. Calculate the Distance between 2 points\n";
		cout << "6. Calculate the Midpoint of 2 points\n";
		cout << "7. Polygon Functions\n";
		cout << "Selection:";
		int selection;
		cin >> selection;
		system("cls");
		switch (selection){
		case 1:
			cout << "Opening Help...\n";
			help();
			willQuit = false;
			break;
		case 2:
			cout << "Opening Calculator...\n";
			qCalc();
			willQuit = false;
			break;
		case 3:
			cout << "Starting Exp Calc...\n";
			calcExp();
			willQuit = false;
			break;
		case 4:
			cout << "Starting Parabola Value Calc...\n";
			calcParabola();
			willQuit = false;
			break;
		case 5:
			cout << "Starting Distance Calc...\n";
			calcPDistance();
			willQuit = false;
			break;
		case 6:
			cout << "Starting MidPoint Calc...\n";
			calcMidPoint();
			willQuit = false;
			break;
		case 7:
			cout << "Opening Polygon Menu...\n";
			showPolyMenu();
			willQuit = false;
			break;
		default:
			willQuit = true;
		};
		return willQuit;
}

