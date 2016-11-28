//
//  main.cpp
//  Q4 Prime
//
//  Created by HeoBin on 2016. 11. 8..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
using namespace std;

int main()
{
    int counter = 1;
    int sum = 2;
    int end_number = 1;
    int target;

    while(counter < 1000)
    {
        end_number += 2;
        target = 2;
        while(target < end_number)
        {
            if(end_number == target+1)
            {
                sum += end_number;
                counter++;

                break;
            }
            else if(end_number % target == 0)
                break;
            else target++;
        }
    }
    cout<<sum<<endl;
    return 0;
}
