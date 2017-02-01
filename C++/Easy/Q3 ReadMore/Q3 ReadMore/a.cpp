#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>
#include <cmath>
#include <string>
using namespace std;


int main(int argc, char *argv[])
{
    string line;
    ifstream inputFile("in.txt");
    if(inputFile){
        while(getline(inputFile,line)){
            if(line.size() <= 55){cout << line << endl;}
            else{
                const int N = 40;
                std::string trimmedLine = line.substr(0, N);
                size_t lastSpace = trimmedLine.rfind(' ');
                if(lastSpace != string::npos){trimmedLine = trimmedLine.substr(0, lastSpace);}
                trimmedLine += "... <Read More>";
                cout << trimmedLine << endl;
            }
        }
    }
    return 0;
}
