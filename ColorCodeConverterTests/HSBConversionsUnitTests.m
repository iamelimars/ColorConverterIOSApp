//
//  HSBConversionsUnitTests.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/2/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HSBConversions.h"

@interface HSBConversionsUnitTests : XCTestCase

@property (nonatomic, strong) HSBConversions *hsbConvert;

@end

@implementation HSBConversionsUnitTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.hsbConvert = [[HSBConversions alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testHSBToHex {
    
    NSString *hexString = [self.hsbConvert HSBToHexWithHue:280/360.0 Saturation:1 Brightness:1];
    NSLog(@"Hex string %@", hexString);
    NSString *expectedString = @"#AA00FF";
    XCTAssertEqualObjects(hexString, expectedString);
    
}

- (void)testHSBToRGB {
    
    [self measureBlock:^{
       
        NSMutableDictionary *dict = [self.hsbConvert HSBToRGBWithHue:280/360.0 Saturation:1 Brightness:1];

        
    }];
    NSMutableDictionary *dict = [self.hsbConvert HSBToRGBWithHue:280/360.0 Saturation:1 Brightness:1];
    
    float red = [[dict objectForKey:@"Red"] floatValue];
    float green = [[dict objectForKey:@"Green"] floatValue];
    float blue = [[dict objectForKey:@"Blue"]floatValue];
    
    float expectedRed = 170.000015;
    float expectedGreen = 0.0;
    float expectedBlue = 255.0;
    
    red = red * 255.0;
    green = green * 255.0;
    blue = blue * 255.0;
    
    NSLog(@"%f", red);
    NSLog(@"%f", green);
    NSLog(@"%f", blue);
    
    
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
