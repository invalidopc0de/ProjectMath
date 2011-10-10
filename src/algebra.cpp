/*
 * algebra.cpp
 *
 *  Created on: Feb 26, 2010
 *      Author: Mark
 */

#include "algebra.h"
#include <iostream>
#include <math.h>

using namespace std;

void qCalc(){
	int a = 0;
	int b = 0;
	int c = 0;
	cout << "Enter a:";
	cin >> a;
	cout << "Enter b:";
	cin >> b;
	cout << "Enter c:";
	cin >> c;
	cout << "\nComputing Answer...";
	if (!(pow(b,2) - 4*a*c) < 0){
		double x = qEquate(a,b,c, false);
		double y = qEquate(a,b,c, true);
		cout << "\nThe answer is [" << x << "," << y << "]";
	}
	else {
		cout << "There are no real roots for this equation.";
	};
	cout << "\n";
	cout << "Press enter to continue...";
	char bye;
	cin >> bye;
	return;
}
double qEquate(int a, int b, int c, bool neg){
	double answer = 0;
	if (neg == true){
		answer = (-b - (sqrt(pow(b,2) - (4*a)*c)))/(2*a);
	}
	else if (neg == false) {
		answer = (-b + (sqrt(pow(b,2) - (4*a)*c)))/(2*a);
	};

	return answer;

}

void calcExp(){
	int number = 0;
	int power = 0;
	cout << "Please enter a number:";
	cin >> number;
	cout << "Please enter the power:";
	cin >> power;
	double answer = pow(number, power);
	cout << number << " to the power of " << power << " is " << answer << "\n\n";
	cout << "Press enter to continue...";
	char bye;
	cin >> bye;
	return;
}
void calcParabola(){
	int a = 0;
	int b = 0;
	int c = 0;
	int x = 0;
	cout << "\n";
	cout << "Please input the following values:\n";
	cout << "A:";
	cin >> a;
	cout << "B:";
	cin >> b;
	cout << "C:";
	cin >> c;
	cout << "Computing Min/Max value....\n";
	if (a == 0) {
		cout << "Unable to compute: 'A' can not be zero!";
	}
	else {
		x = -b/(2*a);
		double answer = pow(x, 2)+(b*x)+c;
		cout << "The Min/Max value is: " << answer << "\n";
	};
	cout << "Press enter to continue...";
	char bye;
	cin >> bye;
	return;

}

