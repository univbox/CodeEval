//
//  main.cpp
//  Q3 ReadMore
//
//  Created by HeoBin on 2016. 11. 5..
//  Copyright © 2016년 bin. All rights reserved.
//

//
//  main.cpp
//  Q2RollerCoaster
//
//  Created by HeoBin on 2016. 11. 4..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

bool Exceed55(string line)
{
    if(line.length() > 55)
        return true;
    else
        return false;
}

void OutExceed(string line,ofstream& m_OutFile)
{
    char in_char;
    int num=0;
    line = line.substr(0,40);
    
    for(string::iterator i = line.begin(); i != line.end(); i++)
    {
        in_char = *i;
        if(num < 36 || in_char != ' ')
        {
            m_OutFile<<in_char;
            cout<<in_char;
            num++;
            if(num == 40) {cout<<"... <Read More>"<<endl; m_OutFile<<"... <Read More>"<<endl; i = line.end()-1;}
        }
        else
        {
            m_OutFile<<"... <Read More>"<<endl;
            cout<<"... <Read More>"<<endl;
            i = line.end()-1;
        }
    }
}


int main()
{
    ifstream m_InFile;
    ofstream m_OutFile;

    m_InFile.open("in.txt");
    m_OutFile.open("out.txt");
    string line;
    bool is_Exceed;
    
    while(getline(m_InFile, line))
    {
        is_Exceed = Exceed55(line);
        if(is_Exceed)
        {
            OutExceed(line, m_OutFile);
        }
        else
        {
            m_OutFile<<line<<endl;
            cout<<line<<endl;
        }
    }
    m_InFile.close();
    m_OutFile.close();
    
    string a = "abc";
    size_t x = a.rfind(a,' ');
    cout<<x<<endl;
    return 0;
}

