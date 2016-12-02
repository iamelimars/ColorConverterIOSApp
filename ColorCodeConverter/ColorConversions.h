//
//  ColorConversions.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorConversions : NSObject

- (NSDictionary *) hsbToRGBWithHue:(float) hue Saturation:(float) saturation Brightness:(float) brightness;

@end
