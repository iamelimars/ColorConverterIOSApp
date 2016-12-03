//
//  RGBConversions.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "RGBConversions.h"

@implementation RGBConversions

-(NSString *)RGBToHexWithRed:(float)red Green:(float)green Blue:(float)blue {
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    return [NSString stringWithFormat:@"#%02lX%02lX%02lX",
            lroundf(r * 255),
            lroundf(g * 255),
            lroundf(b * 255)];
    
}


-(NSMutableDictionary *)RGBToHSBWithRed:(float)red Green:(float)green Blue:(float)blue {
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    [color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[NSNumber numberWithFloat:hue] forKey:@"Hue"];
    [dict setObject:[NSNumber numberWithFloat:saturation] forKey:@"Saturation"];
    [dict setObject:[NSNumber numberWithFloat:brightness] forKey:@"Brightness"];
    
    return dict;
    
}
@end
