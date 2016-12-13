//
//  ViewController.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaletteView.h"
#import "HexConversion.h"
#import "RGBConversions.h"
#import "HSBConversions.h"
#import "UIColor+HexToColor.h"
#import "ConversionTextField.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) PaletteView *colorsView;

@property (strong, nonatomic) HexConversion *hexConvert;
@property (strong, nonatomic) RGBConversions *rgbConvert;
@property (strong, nonatomic) HSBConversions *hsbConvert;

@property (strong, nonatomic) ConversionTextField *rgbTextField;
@property (strong, nonatomic) ConversionTextField *hexTextField;
@property (strong, nonatomic) ConversionTextField *hsbTextField;


@end

