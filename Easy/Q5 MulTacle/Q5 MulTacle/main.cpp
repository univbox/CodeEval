//
//  main.cpp
//  Q5 MulTacle
//
//  Created by HeoBin on 2016. 11. 8..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
using namespace std;

void printNum(int num)
{
    if(num < 10)
        cout<<"   "<<num;
    else if(num < 100)
        cout<<"  "<<num;
    else if(num < 1000)
        cout<<" "<<num;
}

int main(int argc, const char * argv[]) {
    
    for(int j=1;j<13;j++)
    {
        for(int i=1;i<13;i++)
        {
            printNum(i*j);
        }
        cout<<endl;
    }


    return 0;
}
