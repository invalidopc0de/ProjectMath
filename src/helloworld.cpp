//============================================================================
// Name        : helloworld.cpp
// Author      : Mark Saunders
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <math.h>
#include <string>
#include <cstdlib>
#include "geometry.h"
#include "algebra.h"

using namespace std;

void help(void);
bool showMenu(void);

void calcPDistance(void);
void calcMidPoint(void);


int hmain() {
	cout << "Hello World!!!\n"; // prints Hello World!!!
	cout << "Welcome to mark's test console!\n";
	bool quit;
	do {
		quit = showMenu();
	}while (quit == false);
	return 0;
}
void help(){
	cout << "Look in your Math book! Silly! =)\n";
	return;
}

void calcPDistance()
{
	point A,B;
	cout << "Enter point A's X:";
	cin >> A.X;
	cout << "Enter point A's Y:";
	cin >> A.Y;
	cout << "Enter point B's X:";
	cin >> B.X;
	cout << "Enter point B's Y:";
	cin >> B.Y;
	cout << "The Distance between points:" << GetDistance(A,B) << "\n";
	cout << "Press enter to continue...";
	char bye;
	cin >> bye;

}

void calcMidPoint()
{
	point A,B;
	cout << "Enter point A's X:";
	cin >> A.X;
	cout << "Enter point A's Y:";
	cin >> A.Y;
	cout << "Enter point B's X:";
	cin >> B.X;
	cout << "Enter point B's Y:";
	cin >> B.Y;
	cout << "The Midpoint is: ";
    point midpoint;
    midpoint =  FindMidpoint(A,B);
    cout << "("<< midpoint.X << "," << midpoint.Y << ")\n";
	cout << "Press enter to continue...";
	char bye;
	cin >> bye;
}


