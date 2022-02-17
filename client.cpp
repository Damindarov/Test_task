#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <iostream>
#include <cstring>
using namespace std;
string s, type;
int main()
{
    int sock;
    struct sockaddr_in addr;
    cout << "Choose type connection(TCP, UDP):" << endl;  
    getline(cin,type);
    if(type == "TCP"){
        cout << "Enter data:" << endl;  
        getline(cin,s);
        char message[1024];  
        char buf[sizeof(message)];

        strcpy(message, s.c_str());

        sock = socket(AF_INET, SOCK_STREAM, 0);
        if(sock < 0){
            perror("socket");
            exit(1);
        }

        addr.sin_family = AF_INET;
        addr.sin_port = htons(12345); // или любой другой порт...
        addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
        if(connect(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0)
        {
            perror("connect");
            exit(2);
        }

        send(sock, message, sizeof(message), 0);
        recv(sock, buf, sizeof(message), 0);
        
        cout<< buf <<endl;
        close(sock);
    }


    if(type == "UDP"){

        sock = socket(AF_INET, SOCK_DGRAM, 0);
        if(sock < 0){
            perror("socket");
            exit(1);
        }

        addr.sin_family = AF_INET;
        addr.sin_port = htons(3425);
        addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
        cout << "Enter data:" << endl;  
        getline(cin,s);
        char message[1024];  
        strcpy(message, s.c_str());

        sendto(sock, message, sizeof(message), 0,
            (struct sockaddr *)&addr, sizeof(addr));

        char buffer[100];
        recvfrom(sock,buffer, 1024, 0, NULL, NULL);
        cout<<buffer<<endl;
        close(sock);

    }
    return 0;
}