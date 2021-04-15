#include <iostream>
using namespace std;

char Recur(const char* pStr) {
	cout << pStr << " ";
	if (*pStr == 'c') {
		return *pStr;
	}
	else if (*pStr == 'a')
		return 'X';
	else
		return Recur(pStr + 1);
}

int main() {
	const char* pStr = "abc";
	cout << Recur(pStr + 1) << endl;
	return 0;
}
