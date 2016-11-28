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
enum LETTER_TYPE{ENG, END, OTHER};

LETTER_TYPE WhatKindLetter(char in_char)
{
    if((in_char >= 'a' && in_char <= 'z') || ( in_char >='A' && in_char <= 'Z' ))
    {
        return ENG;
    }

    else if(in_char == '.')
    {
        return END;
    }
    else
        return OTHER;
}

char MustBeCapital(char in_char)
{
    if(in_char >= 'a' && in_char <= 'z')
    {
        in_char -= 0x20;
    }
    return in_char;
}

char MustBeSmall(char in_char)
{
    if(in_char >='A' && in_char <= 'Z')
    {
        in_char += 0x20;
    }
    return in_char;
}

int main()
{
    ifstream m_InFile;
    ofstream m_OutFile;
    string in_filename = "in.txt";
    string out_filename = "out.txt";
    char in_char;
    m_InFile.open(in_filename);
    m_OutFile.open(out_filename);
    bool is_first = true;
    string line;
    LETTER_TYPE is_letter = ENG;

    while(getline(m_InFile, line))
    {
        for(string::iterator i = line.begin(); i != line.end(); i++)
        {
            in_char = *i;
            //m_InFile.get(in_char);
            is_letter = WhatKindLetter(in_char);
            if(is_letter == ENG && is_first)
        {
            in_char = MustBeCapital(in_char);
            cout<<in_char;
            m_OutFile<<in_char;
            is_first = false;
        }
        else if(is_letter == ENG && !is_first)
        {
            in_char = MustBeSmall(in_char);
            cout<<in_char;
            m_OutFile<<in_char;
            is_first = true;
        }
        else if(is_letter == OTHER)
        {
            cout<<in_char;
            m_OutFile<<in_char;
        }
        else if(is_letter == END)
        {
            cout<<in_char;
            m_OutFile<<in_char;
            is_first = true;
        }
        }
        cout<<endl;
    }
    m_InFile.close();
    m_OutFile.close();
    return 0;
}

