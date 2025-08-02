
#include "test.hpp"

#include <cstdlib>
#include <iostream>

int main () {

  test_example();

  return 0;
}

void test_example () {

  std::cout << "test 0 == 0" << std::endl;
  test(0 == 0);
  std::cout << "test 1 == 0" << std::endl;
  test(1 == 0);

}

void test (bool expression) {
  if (expression == true) {
    return;
  }
  // expression fails 
  exit(1);
}

