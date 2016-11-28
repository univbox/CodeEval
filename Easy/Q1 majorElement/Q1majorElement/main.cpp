//
//  main.cpp
//  Q1majorElement
//
//  Created by HeoBin on 2016. 11. 4..
//  Copyright © 2016년 bin. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main()
{
    ifstream m_InFile;		///< 인풋파일.
    ofstream m_OutFile;		///< 아웃풋파일.
    string in_filename = "in.txt";
    string out_filename = "out.txt";
    
    m_InFile.open(in_filename);	// file open for writing.
    m_OutFile.open(out_filename);
    string in_string;

    while(!m_InFile.eof())
    {
        m_InFile>>in_string;
        m_OutFile<<in_string<<endl;
    }
    
    m_InFile.close();	// file close
    m_OutFile.close();
    return 0;
}
