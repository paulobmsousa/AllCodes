#include <iostream>
#include <vector>
#include <string>
#include <stdlib.h>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::string;

void f1() {
    cout << "* Function 1 ....................." << endl;
    cout << "Enter two numbers:" << endl;
    int v1 = 0, v2 = 0;
    cin >> v1 >> v2;
    cout << "The sum of " << v1 << " and " << v2
        << " is " << v1 + v2 << endl;
}

template <class T>
void printem(const T &c) {
    size_t siz = c.size();
    for (size_t i=0; i<siz; ++i) {
        if (i>0)
            cout << ", ";
        cout << "'" << c.at(i) << "'";
    }
    cout << endl;
}

void f2() {
    cout << "* Function 2 ....................." << endl;
    vector<int> vi;
    string s("Hello!");
    for (int i = 10; i<15;++i)
        vi.push_back(i);
    printem(vi);
    printem(s);
}

void f3() {
    cout << "* Function 3 ....................." << endl;
    cout << "Enter size:" << endl;
    int n=0;
    cin >> n;
    vector<int> vet(n,0);
    printem(vet);
    for (int i=0; i<n; ++i)
        vet[i] = rand()%100;
    printem(vet);
}


int main() {
    cout << "* Main ....................." << endl;
    //f1();
    //f2();
    f3();
    cout << " (End of program) .........." << endl;
    return EXIT_SUCCESS;
}