#include "libs/TCP_server.h"
#include "libs/UDP_server.h"
#include <iostream>
#include <cstring>

using namespace std;
string type;
int main(){

    cout << "Choose type connection(TCP, UDP):" << endl;  
    getline(cin,type);
    if(type == "TCP"){
        TCP_server server;
        server.init();
        server.startListener();
    }
    if(type == "UDP"){
        UDP_server server;
        server.init();
        server.startListener();    
    }
}