//
//  RGBConversions.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RGBConversions : NSObject

@property (nonatomic) CGFloat redValue;
@property (nonatomic) CGFloat greenValue;
@property (nonatomic) CGFloat blueValue;

- (NSString *) RGBToHexWithRed:(float) red Green:(float) green Blue:(float) blue;
- (NSMutableDictionary *) RGBToHSBWithRed:(float) red Green:(float) green Blue:(float) blue;


@end
