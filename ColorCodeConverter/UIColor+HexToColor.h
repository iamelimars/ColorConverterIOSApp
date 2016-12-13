//
//  UIColor+HexToColor.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/13/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexToColor)

+ (UIColor *)colorWithHex:(NSString *)hex;

@end
