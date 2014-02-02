//
//  Actor.m
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//
#include <iostream>
#import "Actor.h"

#define SECONDS_PER_DAY 3600 / 24

@implementation Actor

-(NSString*) name
{
    return name;
}

- (void) setName: (NSString*)input
{
    name = input;
}

- (NSDate*)dayOfBirth
{
    return dayOfBirth;
}

- (NSString*)dayOfBirthString
{
    return [NSString stringWithString:
            
             [self.dayOfBirth
               descriptionWithCalendarFormat:@"%Y-%m-%d %H:%M:%S %z"
               timeZone:nil
               locale: [[NSUserDefaults standardUserDefaults] dictionaryRepresentation]
             ]
            
        ];
}

- (void) setDayOfBirth: (NSDate*)date
{
    dayOfBirth = date;
}

- (NSString*)greeting
{
    return [NSString stringWithFormat:@"Hello %s!\nYou're %.0f days old.\n",
            [name UTF8String],[self ageInDays]];
}

- (NSTimeInterval)ageInDays
{
    return [[[NSDate alloc] init] timeIntervalSinceDate:dayOfBirth] / SECONDS_PER_DAY;
}



@end
