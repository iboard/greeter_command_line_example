//
//  cl_sample_01_Tests.m
//  cl_sample_01 Tests
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Actor.h"

@interface cl_sample_01_Tests : XCTestCase
{
  Actor* actor;
}
@end

@implementation cl_sample_01_Tests

- (void)setUp
{
    [super setUp];
    actor = [[Actor alloc] init];
    [actor setName:@"Nobody"];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testActorName
{
    XCTAssertTrue([actor.name isEqualToString:@"Nobody"],
                  @"Expect 'Nobody' but got %s", [actor.name UTF8String]
                  );
}

- (void)testGreeting
{
    XCTAssertTrue([actor.greeting isEqualToString:@"Hello Nobody!\n"],
                  @"Expect 'Hello Nobody' but got %s", [actor.greeting UTF8String]);
}



@end
