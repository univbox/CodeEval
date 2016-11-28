//
//  main.cpp
//  Q7 ReverseWords
//
//  Created by HeoBin on 2016. 11. 8..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
#include <sstream>
#include <vector>
#include <fstream>
using namespace std;

int main(int argc, const char * argv[]) {
    ifstream m_InFile("in.txt");
    string line;
    string word;
    vector<string> sentence;
    int number=0;
    while (getline(m_InFile, line))
    {
        number = 0;
        istringstream linestream(line);
        //cout<<line<<endl;
        while (linestream >> word)
        {
            sentence.push_back(word);
            number++;
        }
        
        while(number != 0)
        {
            cout<<sentence.at(number-1)<<" ";
            sentence.pop_back();
            number--;
        }
        cout<<endl;
        
    }
    return 0;
}
