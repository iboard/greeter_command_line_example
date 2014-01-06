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

- (Actor*) setActor: (Actor*)_actor
{
    actor = _actor;
    return actor;
}

- (BOOL)processInput: (NSString*)input
{
    if ( ![self detectQuitCommand:input] ) {
        [actor setName:input];
        [self outputGreeting];
        return TRUE;
    }
    return FALSE;
}

- (void)run
{
  while ([self processInput:[self getInput:"Enter your name or 'q': "]]) {}
}


// private

- (NSString*) getInput: (const char*)prompt
{
    char word[40];
    std::cout << prompt;
    scanf("%39s", word);
    return [NSString stringWithUTF8String:word];
}

- (void)outputGreeting
{
    std::cout << [[actor greeting] UTF8String];
}

- (BOOL) detectQuitCommand: (NSString *)input
{
    return [input isEqualToString:@"q"];
}



@end
