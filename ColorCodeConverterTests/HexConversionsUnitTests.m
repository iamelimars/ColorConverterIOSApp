//
//  HexConversionsUnitTests.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/12/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HexConversion.h"

@interface HexConversionsUnitTests : XCTestCase

@property (strong, nonatomic) HexConversion *hexConversion;

@end

@implementation HexConversionsUnitTests

@synthesize hexConversion;

- (void)setUp {
    [super setUp];

    hexConversion = [[HexConversion alloc] init];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testhexToHSBWithString {
    
    NSDictionary *dict = [hexConversion hexToHSBWithString:@"#90AFC5"];
    
    int hue = [[dict objectForKey:@"Hue"] intValue];
    int saturation = [[dict objectForKey:@"Saturation"] intValue];
    int brightness = [[dict objectForKey:@"Brightness"] intValue];
    
    int expectedHue = 205;
    int expectedSaturation = 27;
    int expectedBrightness = 77;
    
//    hue = hue * 360;
//    saturation = saturation * 100;
//    brightness = brightness * 100;
    
    NSLog(@"%d", hue);
    NSLog(@"%d", saturation);
    NSLog(@"%d", brightness);
    
    XCTAssertEqual(expectedHue, hue);
    XCTAssertEqual(expectedSaturation, saturation);
    XCTAssertEqual(expectedBrightness, brightness);
    
}

- (void)testhexToRGBWithString {
    
    NSDictionary *dict = [hexConversion hexToRGBWithString:@"#90AFC5"];
    
    int red = [[dict objectForKey:@"Red"] intValue];
    int green = [[dict objectForKey:@"Green"] intValue];
    int blue = [[dict objectForKey:@"Blue"] intValue];

    int expectedRed = 144;
    int expectedGreen = 175;
    int expectedBlue = 197;
    
    NSLog(@"%d", red);
    NSLog(@"%d", green);
    NSLog(@"%d", blue);
    
    XCTAssertEqual(expectedRed, red);
    XCTAssertEqual(expectedGreen, green);
    XCTAssertEqual(expectedBlue, blue);

    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
