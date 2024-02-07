#include <iostream>
#include "calc.hpp"  //Thanks to the target_include_directories(Myproject Public /include), we can use the calc.h in this file instead of #include "include/calc.h".
#include "Wifi.hpp"  // Thanks to the target_include_directories(Myproject Public /include /lib), we can use the Wifi.hpp in this file instead of #include "include/Wifi.hpp".
using namespace std;

int main() {
  
  cout << "From main: Hello, World!" << endl;

  // Connect to the network.
  Wifi_Init();

  
  int x=10;
  int y=5;
  cout << "Sum of x and y is: " << sum(x,y) << endl;
  return 0;
}



