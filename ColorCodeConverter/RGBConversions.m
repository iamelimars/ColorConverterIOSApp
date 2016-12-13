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
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    
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
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    
    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    [color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    
    hue = hue * 360;
    saturation = saturation * 100;
    brightness = brightness * 100;
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[NSNumber numberWithFloat:lroundf(hue)] forKey:@"Hue"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(saturation)] forKey:@"Saturation"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(brightness)] forKey:@"Brightness"];

    
    return dict;
    
}
@end
