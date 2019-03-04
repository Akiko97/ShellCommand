#include <iostream>
#include <string>

int main() {
    std::string str1 = "baseball";
    std::string str2 = "hockey";
    std::cout << (str1 > str2 ? str1 + " > " + str2 : str1 + " < " + str2) << std::endl;
    str2 = "Hockey";
    std::cout << (str1 > str2 ? str1 + " > " + str2 : str1 + " < " + str2) << std::endl;
    return 0;
}
