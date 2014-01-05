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

//- (void)testExample
//{
//    // XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//    XCTAssertTrue(1 == 1, @"End of universe");
//}

//- (void)testActorClass
//{
//    XCTAssertTrue(actor != NULL, @"Actor should not be NULL");
//}

- (void)testActorName
{
    XCTAssertTrue([actor.name isEqualToString:@"Nobody"],
                  @"Expect 'Nobody' but got %s", [actor.name UTF8String]
                  );
}

//- (void)testSetActorName
//{
//    [actor setName:@"Mr. Nice"];
//    XCTAssertTrue([actor.name isEqualToString:@"Mr. Nice"],
//                  @"Name should be 'Mr. Nice' but got %s",[actor.name UTF8String]
//                  );
//}

- (void)testGreeting
{
    XCTAssertTrue([actor.greeting isEqualToString:@"Hello Nobody!\n"],
                  @"Expect 'Hello Nobody' but got %s", [actor.greeting UTF8String]);
}



@end
