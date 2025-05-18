#include <iostream>
#include "Hello.h"

JNIEXPORT void JNICALL Java_Hello_hello(JNIEnv *, jobject) {
    std::cout << "Hello, from C++!" << std::endl;
}