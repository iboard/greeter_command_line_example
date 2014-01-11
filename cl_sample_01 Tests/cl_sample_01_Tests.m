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
  NSDate* testBirthday;
}
@end

@implementation cl_sample_01_Tests

- (void)setUp
{
    [super setUp];
    actor = [[Actor alloc] init];    [actor setName:@"Nobody"];
    app = [[GreeterApp alloc] init]; [app setActor:actor];
    testBirthday = [NSDate dateWithString:@"1964-08-31 00:00:00 +02:00"];
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

- (void)testActorAge
{
    [actor setDayOfBirth:testBirthday];

    XCTAssertTrue( [actor.dayOfBirth isEqualToDate:testBirthday], @"Expect '1964-08-31' but got something different %@", [actor dayOfBirthString] );
    XCTAssertTrue( [actor.dayOfBirthString isEqualToString:@"1964-08-31 00:58:00 +0100"], @"1964-08-31 00:58:00 +0100' but got something different %@", [actor dayOfBirthString] );
}

- (void)testActorAgeInDays
{
    [actor setDayOfBirth:testBirthday];
    XCTAssertTrue( [actor ageInDays] == 100 , @"Expect 100 but got %d", [actor ageInDays] );
}


@end
