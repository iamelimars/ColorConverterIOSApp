//
//  HSBConversions.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "HSBConversions.h"

@implementation HSBConversions


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.hueValue = 150;
        self.saturationValue = 1.0;
        self.brightnessValue = 1.0;
        
    }
    return self;
}

-(NSString *)HSBToHexWithHue:(float)hue Saturation:(float)saturation Brightness:(float)brightness {
    
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1.0];
    
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    return [NSString stringWithFormat:@"#%02lX%02lX%02lX",
            lroundf(r * 255),
            lroundf(g * 255),
            lroundf(b * 255)];
    
}
//-(NSDictionary *)HSBToRGBWithHue:(float)hue Saturation:(float)saturation Brightness:(float)brightness {
//
//    UIColor *hsbColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1.0];
//    
//    NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:<#(nonnull id), ...#>, nil]
//    
//    [hsbColor getRed:<#(nullable CGFloat *)#> green:<#(nullable CGFloat *)#> blue:<#(nullable CGFloat *)#> alpha:<#(nullable CGFloat *)#>];
//}


@end
