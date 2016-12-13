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
    
    NSString *hexString = [self.rgbConvert RGBToHexWithRed:51 Green:107 Blue:135];
    
    NSLog(@"%@", hexString);
    
    NSString *expectedHexString = @"#336B87";
    
    XCTAssertEqualObjects(hexString, expectedHexString);
}

- (void)testRGBToHSB {
    
    NSMutableDictionary *dict =  [self.rgbConvert RGBToHSBWithRed:144 Green:175 Blue:197];
    
    int hue = [[dict objectForKey:@"Hue"] intValue];
    int saturation = [[dict objectForKey:@"Saturation"] intValue];
    int brightness = [[dict objectForKey:@"Brightness"] intValue];
    
    NSLog(@"%d", hue);
    NSLog(@"%d", saturation);
    NSLog(@"%d", brightness);
    
    int expectedHue = 205;
    int expectedSaturation = 27;
    int expectedBrightness = 77;

    XCTAssertEqual(expectedHue, hue);
    XCTAssertEqual(expectedSaturation, saturation);
    XCTAssertEqual(expectedBrightness, brightness);
        
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
