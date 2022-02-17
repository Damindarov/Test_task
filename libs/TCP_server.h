// #pragma once
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
using namespace std;
class TCP_server
{ 
// private:

    
public:
    char buf[1024];
    int bytes_read;
    int sock, listener;
    struct sockaddr_in addr;
    
    // int sock_udp, listener_udp;
    // struct sockaddr_in addr;

    TCP_server();
    ~TCP_server(){};
    void init();
    void startListener();
};