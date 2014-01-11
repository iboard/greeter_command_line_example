//
//  Actor.m
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#import "Actor.h"

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
    return [NSString stringWithFormat:@"Hello %s!\n", [name UTF8String]];
}

- (int)ageInDays
{
    return 100;
}



@end
