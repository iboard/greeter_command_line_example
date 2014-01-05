//
//  main.cpp
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#include <iostream>
#include "Actor.h"

int main(int argc, const char * argv[])
{

    Actor* actor;
    
    actor = [[Actor alloc] init];
    [actor setName:@"Andi"];
    std::cout << [[actor greeting] UTF8String];
    return 0;
}

