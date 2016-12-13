//
//  ViewController.h
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaletteView.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) PaletteView *colorsView;

@property (strong, nonatomic) UITextField *rgbTextField;
@property (strong, nonatomic) UITextField *hexTextField;
@property (strong, nonatomic) UITextField *hsbTextField;


@end

