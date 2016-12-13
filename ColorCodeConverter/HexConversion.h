//
//  HexConversion.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HexConversion : NSObject

@property (strong ,nonatomic) NSString *hexString;

- (NSDictionary *) hexToRGBWithString:(NSString *) hexString;
- (NSDictionary *) hexToHSBWithString:(NSString *) hexString;

@end
