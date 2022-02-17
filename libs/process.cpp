#include <iostream>
#include <cstring>
#include<sstream>
#include <vector>
#include <algorithm>

using namespace std;
string convertToString(char* a, int size){
    int i;
    string s = "";
    for (i = 0; i < size; i++) {
        s = s + a[i];
    }
    return s;
}

string getNumberFromString(string s) {
    stringstream str_strm;
    int sum = 0;
    string resString = "";
    str_strm << s;
    string temp_str;
    cout<<""<<endl;
    int temp_int;
    vector<int> numbers;
    while(!str_strm.eof()) {
        str_strm >> temp_str;
        if(stringstream(temp_str) >> temp_int) {
            // cout << temp_int << " ";
            numbers.push_back(temp_int);
        }
        temp_str = "";
    }
    
    sort(numbers.begin(), numbers.end());
    for(int i = 0; i < numbers.size(); i++){
        resString += to_string(numbers[i])+" ";
        sum += numbers[i];
    }
    resString += "\n"+to_string(sum);
return resString;
}