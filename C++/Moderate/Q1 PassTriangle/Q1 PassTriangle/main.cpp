//
//  main.cpp
//  Q1 PassTriangle
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

    int number=0;
    int sum = 0;
    int target=-1;
    int index = 0;
    int x = 0;
    int y = 0;

    while (getline(m_InFile, line))
    {
        istringstream linestream(line);

        index = 0;
        while(index <= target + 1)
        {
            linestream >> number;
            if(index == target) x = number;
            else if(index == target+1) y = number;
            index++;
        }
        
        if(x>y){
            number = x;
            target = index-2;
        }
        else
        {
            number = y;
            target = index-1;
        }
        cout<<"NUMBER: "<<number<<endl;
        sum += number;


    }
    cout<<sum<<endl;
    return 0;
}
