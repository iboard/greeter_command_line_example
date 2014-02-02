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

- (BOOL)processInput: (NSString *)name use_birthday:(NSDate *)birthday
{
    if ( ![self detectQuitCommand:name] ) {
        [actor setName:name];
        [self setBirthday:birthday];
        [self outputGreeting];
        return TRUE;
    }
    return FALSE;
}

- (void)run
{
  while ([self processInput:[self getInput:"Enter your name or 'q': "] use_birthday:NULL]) {}
}


// private
- (NSDate *)askDateOfBirth
{
    NSString *word = [self getInput:"Yor of birthday (YYYY-MM-DD): "];
    NSString *dateString = [[NSString alloc] initWithFormat:@"%@ 00:00:00 +0000", word];
    return [[NSDate alloc] initWithString:dateString];
}


- (void)setBirthday: (NSDate *)birthday
{
    if (birthday == NULL) {
        [actor setDayOfBirth: [self askDateOfBirth]];
    }
}


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

- (BOOL)detectQuitCommand: (NSString *)input
{
    return [input isEqualToString:@"q"];
}



@end
