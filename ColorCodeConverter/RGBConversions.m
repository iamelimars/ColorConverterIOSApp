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

- (NSString *)RGBToHexWithString:(NSString *)string {
    
    NSString *rgbString = string;
    NSArray *rgbArray = [rgbString componentsSeparatedByString:@","];
    
    int red = 255;
    int green = 189;
    int blue = 158;
    
    NSLog(@"%lu", (unsigned long)rgbArray.count);
    
    if (rgbArray.count < 4) {
        if ([rgbArray[0]  isEqual: @""]) {
        
            red = 255;
        
        } else {
            
            if (rgbArray[0] != nil) {
                red = [rgbArray[0] intValue];
            } else if (rgbArray[1] != nil) {
                green = [rgbArray[1] intValue];
            } else if (rgbArray[2] != nil) {
                blue = [rgbArray[2] intValue];
            }
            
        }
    }
    
    
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


- (NSString *)RGBToHsBWithString:(NSString *)string {
    
//    NSString *hsbString = string;
//    NSArray *hsbArray = [hsbString componentsSeparatedByString:@","];
//    
//    int hue = 19;
//    int saturation = 38;
//    int brightness = 100;
//    
//    if (hsbArray.count < 4) {
//        if ([hsbArray[0]  isEqual: @""]) {
//            
//            hue = hue;
//            
//        } else {
//            
//            if (hsbArray[0] != nil) {
//                hue = [hsbArray[0] intValue];
//            } else if (hsbArray[1] != nil) {
//                saturation = [hsbArray[1] intValue];
//            } else if (hsbArray[2] != nil) {
//                brightness = [hsbArray[2] intValue];
//            }
//        }
//    }
//    
//    UIColor *color = [UIColor colorWithHue:hue/360.0 saturation:saturation/100.0 brightness:brightness/100.0 alpha:1.0];

    NSString *rgbString = string;
    NSArray *rgbArray = [rgbString componentsSeparatedByString:@","];
    
    int red = 255;
    int green = 189;
    int blue = 158;
    
    NSLog(@"%lu", (unsigned long)rgbArray.count);
    
    if (rgbArray.count < 4) {
        if ([rgbArray[0]  isEqual: @""]) {
            
            red = 255;
            
        } else {
            
            if (rgbArray[0] != nil) {
                red = [rgbArray[0] intValue];
            } else if (rgbArray[1] != nil) {
                green = [rgbArray[1] intValue];
            } else if (rgbArray[2] != nil) {
                blue = [rgbArray[2] intValue];
            }
            
        }
    }
    
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];

    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    [color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    
    
    
    hue = hue * 360;
    saturation = saturation * 100;
    brightness = brightness * 100;
    
    return [NSString stringWithFormat:@"%d,%d,%d", (int)hue, (int)saturation, (int)brightness];
    
    
}

@end
