#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include "process.h"
#include <unistd.h>
#include <iostream>
#include <cstring>
#include "TCP_server.h"
#include<thread>

using namespace std;
TCP_server::TCP_server(){};

void TCP_server::init(){
    listener = socket(AF_INET, SOCK_STREAM, 0);
    if(listener < 0){
        perror("socket");
        exit(1);
    }

    addr.sin_family = AF_INET;
    addr.sin_port = htons(12345);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    if(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror("bind");
        exit(2);
    }

    cout<<"Init TCP"<<endl;
}


void TCP_server::startListener(){
    
    listen(listener, 1);
    while(1){
    sock = accept(listener, NULL, NULL);
    if(sock < 0){
        perror("accept");
        exit(3);
    }


    while(1){
        bytes_read = recv(sock, buf, 1024, 0);
        int a_size = sizeof(buf) / sizeof(char);
        string s = convertToString(buf,a_size);
        string resString = getNumberFromString(s);

        char message1[1024];  
        strcpy(message1, resString.c_str());

        if(bytes_read <= 0) break;
        send(sock, message1, bytes_read, 0);
        bytes_read = 0;
    }
    for(int i=0;i<1024;i++)buf[i]=0;
    bytes_read = 0;
    close(sock);

    }

}   
