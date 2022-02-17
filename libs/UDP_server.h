// #pragma once
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
using namespace std;
class UDP_server
{     
public:
    char buf[1024];
    int bytes_read;
    int sock, listener;
    struct sockaddr_in addr;
    
    UDP_server();
    ~UDP_server(){};
    void init();
    void startListener();
};