//
//  ViewController.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    RGBTextField,
    HexTextField,
    HSBTextField
} Conversions;


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

//    self.colorsView = [[PaletteView alloc] initWithFrame:CGRectMake(100, 50, self.view.frame.size.width - 200, self.view.frame.size.height - 100)];
//    [self.view addSubview:self.colorsView];
    
    [self setupHexView];
    [self setupRGBView];
    [self setupHSBView];
 
}

- (void)setupHexView {
    
    self.hexTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.20, self.view.frame.size.width, 50)];
    [self.hexTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.hexTextField.delegate = self;
    self.hexTextField.textAlignment = NSTextAlignmentCenter;
    self.hexTextField.placeholder = @"hex";
    [self.view addSubview:self.hexTextField];
    
}

- (void)setupRGBView {
    
    self.rgbTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.40, self.view.frame.size.width, 50)];
    [self.rgbTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.rgbTextField.delegate = self;
    self.rgbTextField.textAlignment = NSTextAlignmentCenter;
    self.rgbTextField.placeholder = @"rgb";
    [self.view addSubview:self.rgbTextField];
    
}
- (void)setupHSBView {
    
    self.hsbTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.60, self.view.frame.size.width, 50)];
    [self.hsbTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.hsbTextField.delegate = self;
    self.hsbTextField.textAlignment = NSTextAlignmentCenter;
    self.hsbTextField.placeholder = @"hsb";
    [self.view addSubview:self.hsbTextField];

    
}

- (void)conversionSwitch:(Conversions)convert {
    
    switch (convert) {
        case RGBTextField:
            NSLog(@"RGB");
            break;
        case HexTextField:
            NSLog(@"HEX");
            break;
        case HSBTextField:
            NSLog(@"HSB");
            break;
        default:
            break;
    }
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField == self.hexTextField) {
        [self conversionSwitch:HexTextField];
    }
    else if (textField == self.rgbTextField) {
        [self conversionSwitch:RGBTextField];
    }
    else if (textField == self.hsbTextField) {
        [self conversionSwitch:HSBTextField];
    }
    
    
}

-(void)textFieldDidChange :(UITextField *) textField{
    
    if (textField == self.hexTextField) {
        [self conversionSwitch:HexTextField];
    }
    else if (textField == self.rgbTextField) {
        [self conversionSwitch:RGBTextField];
    }
    else if (textField == self.hsbTextField) {
        [self conversionSwitch:HSBTextField];
    }

}

@end
