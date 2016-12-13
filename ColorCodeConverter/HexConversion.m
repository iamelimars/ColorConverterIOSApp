//
//  HexConversion.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "HexConversion.h"

@implementation HexConversion

- (NSDictionary *)hexToHSBWithString:(NSString *)hexString {
  
    UIColor *hexColor = [self colorWithHexString:hexString];
    
    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    [hexColor getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    
    hue = hue * 360;
    saturation = saturation * 100;
    brightness = brightness * 100;
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[NSNumber numberWithFloat:lroundf(hue)] forKey:@"Hue"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(saturation)] forKey:@"Saturation"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(brightness)] forKey:@"Brightness"];
    
    
    return dict;
}

- (NSDictionary *)hexToRGBWithString:(NSString *)hexString {
    
    
    UIColor *hexColor = [self colorWithHexString:hexString];
    
    const CGFloat *components = CGColorGetComponents(hexColor.CGColor);
    
    CGFloat red = components[0];
    CGFloat green = components[1];
    CGFloat blue = components[2];
    
    red = red * 255.0;
    green = green * 255.0;
    blue = blue * 255.0;
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[NSNumber numberWithFloat:lroundf(red)] forKey:@"Red"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(green)] forKey:@"Green"];
    [dict setObject:[NSNumber numberWithFloat:lroundf(blue)] forKey:@"Blue"];
    
    return dict;
    
}

- (UIColor *)colorWithHexString:(NSString *)str {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:str];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];}

- (UIColor *)colorWithHex:(UInt32)col {
    unsigned char r, g, b;
    b = col & 0xFF;
    g = (col >> 8) & 0xFF;
    r = (col >> 16) & 0xFF;
    return [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:1];
}

@end
