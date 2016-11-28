#include <iostream>
#include <fstream>
#include <string>
using namespace std;
enum LETTER_TYPE{ENG, END, OTHER};

LETTER_TYPE WhatKindLetter(char in_char)
{
    if((in_char >= 'a' && in_char <= 'z') || (in_char >='A' && in_char <= 'Z'))
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

int main(int argc, char *argv[]) 
{
    ifstream stream(argv[1]);
    char in_char;
    bool is_first = true;
    LETTER_TYPE is_letter = ENG;

    while(!stream.eof())
    {
        in_char = NULL;
        stream.get(in_char);
        is_letter = WhatKindLetter(in_char);
        if(is_letter == ENG && is_first)
        {
            in_char = MustBeCapital(in_char);
            cout<<in_char;
            is_first = false;
        }
        else if(is_letter == ENG && !is_first)
        {
            in_char = MustBeSmall(in_char);
            cout<<in_char;
            is_first = true;
        }
        else if(is_letter == OTHER)
        {
            cout<<in_char;
        }
        else if(is_letter == END)
        {
            cout<<in_char;
            is_first = true;
        }
    }

    return 0;
}