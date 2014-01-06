//
//  cl_sample_01_Tests.m
//  cl_sample_01 Tests
//
//  Created by Andreas Altendorfer on 05.01.14.
//  Copyright (c) 2014 Andreas Altendorfer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Actor.h"
#import "GreeterApp.h"

@interface cl_sample_01_Tests : XCTestCase
{
  Actor* actor;
  GreeterApp* app;
}
@end

@implementation cl_sample_01_Tests

- (void)setUp
{
    [super setUp];
    actor = [[Actor alloc] init];    [actor setName:@"Nobody"];
    app = [[GreeterApp alloc] init]; [app setActor:actor];
}

- (void)tearDown
{
    [super tearDown];
}

// Tests

- (void)testActorName
{
    XCTAssertTrue([actor.name isEqualToString:@"Nobody"], @"Expect 'Nobody' but got %s", [actor.name UTF8String]);
}

- (void)testGreeting
{
    XCTAssertTrue([actor.greeting isEqualToString:@"Hello Nobody!\n"],
                  @"Expect 'Hello Nobody!<CR>' but got %s", [actor.greeting UTF8String]);
}

- (void)testProcessInputStopsOnQAndDoesNotChangeValue
{
    XCTAssertTrue([app processInput:@"q"] == FALSE, "Process input q should return FALSE but didn't.");
    XCTAssertTrue([actor.name isEqualToString:@"Nobody"], @"Expect 'Nobody' but got %s", [actor.name UTF8String]);
}

- (void)testProcessInputWithValueSetsActorsName
{
    XCTAssertTrue([app processInput:@"Frank"] == TRUE, "Process with Frank should return TRUE but didn't.");
    XCTAssertTrue([actor.name isEqualToString:@"Frank"], "Actor sould be 'Frank' but is %s", [actor.name UTF8String]);
}



@end
