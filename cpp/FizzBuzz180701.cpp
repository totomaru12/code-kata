#include "FizzBuzz180701.h"
#include <string>

const char* FizzBuzz180701::getString(int index) {
    if (index % 15 == 0) {
        return "FizzBuzz";
    } else if (index % 3 == 0) {
        return "Fizz";
    } else if (index % 5 == 0) {
        return "Buzz";
    } else {
        std::string num = std::to_string(index);
        return num.c_str();
    }
}
