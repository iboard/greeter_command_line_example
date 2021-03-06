//
//  main.cpp
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14 as a simple TDD'ed command-line example for Mac OS X
//  The program reads your name from stdin and outputs a simple greeting.
//
//  Actor is a simple Object-class with a single property 'name'.
//  See cl_smaple_01_Tests.m
//
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#include "GreeterApp.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Actor* actor= [[Actor alloc] init];
        GreeterApp *app = [[GreeterApp alloc] init];
        [app setActor:actor];
        [app run];
    }
    return 0;
}

