#include<iostream>
using namespace std;

void testMain();
char Recur(char*);

int main() {
    cout << "Hello world!";
    testMain();
    return 0;
}

void testMain() {
    char* pStr = "abc";
    cout << Recur(pStr+1) << endl;
}

char Recur(char* pStr) {
    cout << pStr << " ";
    if (*pStr == 'c') {
        return *pStr;
        }
    else if (*pStr == 'a')
        return 'X';
    else
        return Recur(pStr + 1);
}
