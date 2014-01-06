//
//  main.cpp
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14 as a simple TDD'ed command-line example for Mac OS X
//  The program reads your name from stdin and outputs a simple greeting.
//
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#include <iostream>
#include "Actor.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Actor* actor= [[Actor alloc] init];
        
        do {
            char word[40];
            std::cout << "Enter your name or 'q': ";
            scanf("%39s", word);
            [actor setName:[NSString stringWithUTF8String:word]];
            std::cout << [[actor greeting] UTF8String];
        } while (![actor.name isEqualTo:@("q")]);
    }
    return 0;
}

