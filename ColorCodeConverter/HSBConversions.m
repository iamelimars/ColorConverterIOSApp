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
//HSB to hex conversion
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
//HSB to rgb conversion
-(NSMutableDictionary *)HSBToRGBWithHue:(float)hue Saturation:(float)saturation Brightness:(float)brightness {

    UIColor *hsbColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1.0];
    
    const CGFloat *components = CGColorGetComponents(hsbColor.CGColor);

    
    CGFloat red = components[0];
    CGFloat green = components[1];
    CGFloat blue = components[2];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[NSNumber numberWithFloat:red] forKey:@"Red"];
    [dict setObject:[NSNumber numberWithFloat:green] forKey:@"Green"];
    [dict setObject:[NSNumber numberWithFloat:blue] forKey:@"Blue"];
    
    return dict;
    
}


@end
