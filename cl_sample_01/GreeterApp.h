//
//  GreeterApp.h
//  cl_sample_01
//
//  Created by Andreas Altendorfer on 06.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"

@interface GreeterApp : NSObject
{
    Actor* actor;
}

- (Actor*) setActor: (Actor*)actor;

// run in a loop until user inputs 'q'
- (void)run;

// process a single input
- (BOOL)processInput: (NSString*)input;

@end
