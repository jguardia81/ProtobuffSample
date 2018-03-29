#include "exemple.pb.h"
#include <iostream>

using namespace std;
int main()
{
    SearchRequest req;
    req.set_query("Test");
    cout << "Hello World!" << req.query() << endl;
    return 0;
}
