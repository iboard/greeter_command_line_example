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

- (BOOL)processInput: (NSString*)input;
- (NSString*) getInput: (const char*)prompt;

@end
