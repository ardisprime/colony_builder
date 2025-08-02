
#include "test.hpp"

#include <cstdlib>
#include <iostream>

int main () {

  return 0;
}

void test (bool expression) {
  if (expression == true) {
    return;
  }
  // expression fails 
  exit(1);
}

