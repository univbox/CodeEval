//
//  main.cpp
//  Q6 FizzBuzz
//
//  Created by HeoBin on 2016. 11. 8..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
#include <fstream>
using namespace std;

void printFB(int X,int Y,int N)
{
    int index=1;
    while(index <=N)
    {
        if(index % X == 0 && index % Y ==0 )
            cout<<"FB ";
        else if(index % X == 0)
            cout<<"F ";
        else if(index % Y == 0)
            cout<<"B ";
        else if(index == N)
            cout<<index;
        else
            cout<<index<<" ";
        index++;
    }
    cout<<endl;
}

int main(int argc, const char * argv[]) {
    ifstream m_InFile("in.txt");
    string line;
    int X;
    int Y;
    int N;


    while(!m_InFile.eof())
    {
        m_InFile>>X>>Y>>N;
        
        printFB(X,Y,N);
    }
    
    return 0;
}
