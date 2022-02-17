#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include "process.h"
#include <unistd.h>
#include <iostream>
#include <cstring>
#include "UDP_server.h"

using namespace std;
UDP_server::UDP_server(){};

void UDP_server::init(){
    sock = socket(AF_INET, SOCK_DGRAM, 0);
    if(sock < 0)
    {
        perror("socket");
        exit(1);
    }
    
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    if(bind(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror("bind");
        exit(2);
    }
    cout<<"Init UDP"<<endl;
}


void UDP_server::startListener(){
    
    while(1){
        struct sockaddr_in cliaddr;
        socklen_t clilen = sizeof(cliaddr);
        bytes_read = recvfrom(sock, buf, 1024, 0, (struct sockaddr *) &cliaddr, &clilen);
        buf[bytes_read] = '\0';
        int a_size = sizeof(buf) / sizeof(char);
        string s = convertToString(buf,a_size);
        string resString = getNumberFromString(s);
        char message1[1024];  
        strcpy(message1, resString.c_str());
        sendto(sock, message1, sizeof(message1), 0, (struct sockaddr *)&cliaddr, sizeof(cliaddr));
        for(int i=0;i<1024;i++)buf[i]=0;
        bytes_read = 0;
    }
}