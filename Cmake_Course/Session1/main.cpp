#include <iostream>
#include "calc.hpp" 
//Thanks to the target_include_directories(Myproject Public /include), we can use the calc.h in this file instead of #include "include/calc.h".

using namespace std;

int main() {
  cout << "Hello, World!" << endl;
  int x=10;
  int y=5;
  cout << "Sum of x and y is: " << sum(x,y) << endl;
  return 0;
}



