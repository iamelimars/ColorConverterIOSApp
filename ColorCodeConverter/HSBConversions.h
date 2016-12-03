//
//  HSBConversions.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HSBConversions : NSObject

@property (nonatomic) CGFloat hueValue;
@property (nonatomic) CGFloat saturationValue;
@property (nonatomic) CGFloat brightnessValue;

- (NSString *)HSBToHexWithHue:(float) hue Saturation:(float) saturation Brightness:(float) brightness;
- (NSMutableDictionary *)HSBToRGBWithHue:(float)hue Saturation:(float)saturation Brightness:(float)brightness;

@end
