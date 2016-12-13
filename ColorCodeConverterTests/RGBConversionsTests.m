//
//  RGBConversionsTests.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/2/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RGBConversions.h"

@interface RGBConversionsTests : XCTestCase

@property (strong, nonatomic) RGBConversions *rgbConvert;

@end

@implementation RGBConversionsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.rgbConvert = [[RGBConversions alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRGBToHex {
    
    
    
}

- (void)testRGBToHSB {
    
    
    
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
