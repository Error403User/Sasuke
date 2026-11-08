#include <iostream>
#include <string>
using namespace std;

int main(){
	
	int menu, quantity;
	string item;
	float bill = 0.0;
	float total = 0.0;
	float tax = 0.06;
	float finalbill = 0.0;
	cout << "Restaurant AAA";
	cout <<"\n\n1. Ayam bakar";
	cout <<"\n2. Ikan bakar";
	cout <<"\n3. Kambing bakar";
	cout <<"\n\nChoice 1 - 3 : ";
	cin >> menu;
	while(menu < 1 || menu > 3){
		cout << "Invalid Input!";
		cout  << "\nChoice Again (1-3): ";
		cin >> menu;

	}
	
	switch(menu){
		case 1:
			item = "Ayam bakar";
			bill = 10.00;
			break;
		case 2:
			item = "Ikan bakar";
			bill = 12.00;
			break;
		case 3:
			item = "Kambing bakar";
			bill = 20.00;
			break;
		default:
			cout << "invalid order !!";
		}
	
	
	cout<< "\nEnter quantity : ";
	cin >> quantity;
	if(quantity < 1){
		cout << "Quantity must be greater than 0: ";
		cin >> quantity;
	}
	
	
	total = bill * quantity;
	finalbill = (total * tax) + total;
	
	cout << "\n\n ======Receipt======";
	cout << "\nMenu     : " << item;
	cout << "\nQuantity : " << quantity ;
	cout << "\nBill     : RM" << finalbill;
	
	return 0;
}
