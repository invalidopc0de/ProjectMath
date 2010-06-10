#include <iostream>
#include "src/geometry.h"

using namespace std;

int main(int argc, char **argv) {
    cout << "Welcome to the Project Work Experiment" << endl;
    cout << "Please select an equation: \n";
    cout << "---------------------------\n";
    cout << "1. Solve area using apothem\n";
    cout << "2. Solve area using radius \n";
    cout << "3. Solve area using side   \n";
    cout << "4. Solve volume of Prism   \n";
    cout << "5. Solve volume of Cylinder\n";
    cout << "6. Solve volume of Pyramid \n";
    cout << "7. Solve volume of Cone    \n";
    cout << "8. Solve SurfaceArea of Sphere\n";
    cout << "9. Solve volume of Sphere  \n";
    cout << "Selection:";
    int selection;
    cin >> selection;
    
    int sides;
    
    if (selection > 0 && selection < 4)
    {
      cout << "Enter # of sides:";
      cin >> sides;
    }
      
    cout << "Show work? (Y/N):";
    char cShowWork;
    cin >> cShowWork;
    
    bool bShowWork;
    if (cShowWork == 'Y' || cShowWork == 'y')
      bShowWork == true;
    else
      bShowWork == false;
    
    float answer;
    float parameter1, parameter2;
    switch (selection)
    {
      case 1:
	cout << "Enter length of apothem:";
        cin >> parameter1;
        answer = FindAreaFromKnown(PLY_APOTHEM, parameter1, sides, bShowWork);
	cout << "The area is:" << answer << endl;
	break;
      case 2:
	cout << "Enter length of radius:";
        cin >> parameter1;
        answer = FindAreaFromKnown(PLY_RADIUS, parameter1, sides, bShowWork);
	cout << "The area is:" << answer << endl;
	break;
      case 3:
	cout << "Enter length of side:";
        cin >> parameter1;
        answer = FindAreaFromKnown(PLY_SIDE, parameter1, sides, bShowWork);
	cout << "The area is:" << answer << endl;
	break;
      case 4:
	cout << "Enter area of the base:";
        cin >> parameter1;
	cout << "Enter length of the height:";
        cin >> parameter2;
        answer = Prism_Volume(parameter1, parameter2, bShowWork);
	cout << "The volume is:" << answer << endl;
	break;
      case 5:
	cout << "Enter length of the base radius:";
        cin >> parameter1;
	cout << "Enter length of the height:";
        cin >> parameter2;
        answer = Cylinder_Volume(parameter1, parameter2, bShowWork);
	cout << "The volume is:" << answer << endl;
	break;
      case 6:
        cout << "Enter area of the base:";
        cin >> parameter1;
        cout << "Enter length of the height:";
        cin >> parameter2;
        answer = Pyramid_Volume(parameter1, parameter2, bShowWork);
        cout << "The volume is:" << answer << endl;
        break;
      case 7:
        cout << "Enter length of the base radius:";
        cin >> parameter1;
        cout << "Enter length of the height:";
        cin >> parameter2;
        answer = Cone_Volume(parameter1, parameter2, bShowWork);
        cout << "The volume is:" << answer << endl;
        break;
      case 8:
        cout << "Enter length of the radius:";
        cin >> parameter1;
        answer = Sphere_SurfaceArea(parameter1, bShowWork);
        cout << "The surface area is:" << answer << endl;
        break;
      case 9:
        cout << "Enter length of the radius:";
        cin >> parameter1;
        answer = Sphere_Volume(parameter1, bShowWork);
        cout << "The volume is:" << answer << endl;
        break;
      default:
	break;
    }
    
    cout << endl;
    cin.clear(); // just to ensure there's no junk in the stream which
    cout << "Press Enter / Return to continue...\n";
    cin.ignore(1,0);
    
    return 0;
}

void EasterEgg()
{
    cout << "FUN!";
}
