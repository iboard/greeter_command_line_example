//
//  Actor.h
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actor : NSObject
{
    NSString* name;
}

- (NSString*)name;
- (void) setName: (NSString*)input;

- (NSString*)greeting;

@end

