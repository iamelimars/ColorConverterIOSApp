//
//  UIColor+HexToColor.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/13/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "UIColor+HexToColor.h"

@implementation UIColor (HexToColor)

+ (UIColor *)colorWithHex:(NSString *)hex {
    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];

    
}

@end
