//
//  GreeterApp.m
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 06.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//
#include <iostream>
#import "GreeterApp.h"

@implementation GreeterApp


- (NSString*) getInput: (const char*)prompt
{
    char word[40];
    std::cout << prompt;
    scanf("%39s", word);
    return [NSString stringWithUTF8String:word];
}

- (void)outputGreeting: (Actor*)forActor
{
    std::cout << [[forActor greeting] UTF8String];
}

- (BOOL) detectQuitCommand: (NSString *)command
{
    return [command isEqualToString:@"q"];
}

- (BOOL)processInput: (NSString*)input
{
    Actor* actor= [[Actor alloc] init];
    
    if ( ![self detectQuitCommand:input] ) {
        [actor setName:input];
        [self outputGreeting:actor];
        return TRUE;
    }
    return FALSE;
}

@end
