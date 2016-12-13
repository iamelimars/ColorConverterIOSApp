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
    
    self.hexConvert = [[HexConversion alloc] init];
    self.rgbConvert = [[RGBConversions alloc] init];
    self.hsbConvert = [[HSBConversions alloc] init];
    
    
    [self setupHexView];
    [self setupRGBView];
    [self setupHSBView];
 
}

- (void)setupHexView {
    
    self.hexTextField = [[ConversionTextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.20, self.view.frame.size.width, 50)];
//    [self.hexTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.hexTextField.delegate = self;
    self.hexTextField.placeholder = @"#hexxxx";
//    self.hexTextField.attributedText = @{
//                                         NSFontAttributeName: [UIFont fontWithName:@"" size:20]
//                                                
//                                                };
    [self.view addSubview:self.hexTextField];
    
}

- (void)setupRGBView {
    
    self.rgbTextField = [[ConversionTextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.40, self.view.frame.size.width, 50)];
//    [self.rgbTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.rgbTextField.delegate = self;
    self.rgbTextField.placeholder = @"red,green,blue";
    [self.view addSubview:self.rgbTextField];
    
}
- (void)setupHSBView {
    
    self.hsbTextField = [[ConversionTextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.60, self.view.frame.size.width, 50)];
//    [self.hsbTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    self.hsbTextField.delegate = self;
    self.hsbTextField.placeholder = @"hue,saturation,brightness";
    [self.view addSubview:self.hsbTextField];

}

- (void)conversionSwitch:(Conversions)convert {
//    NSString *rgbString = self.rgbTextField.text;
//    NSArray *rgbArray = [rgbString componentsSeparatedByString:@","];
//    int red = [rgbArray[0] intValue];
//    int green = [rgbArray[1] intValue];
//    int blue = [rgbArray[2] intValue];
    
//    NSString *hsbString = self.hsbTextField.text;
//    NSArray *hsbArray = [hsbString componentsSeparatedByString:@","];
//    int hue = [hsbArray[0] intValue];
//    int saturation = [hsbArray[1] intValue];
//    int brightness = [hsbArray[2] intValue];
    
    switch (convert) {
        case RGBTextField:
            
            self.hexTextField.text = [self.rgbConvert RGBToHexWithString:self.rgbTextField.text];
            self.hsbTextField.text = [self.rgbConvert RGBToHsBWithString:self.rgbTextField.text];
            
            self.view.backgroundColor = [UIColor colorWithHex:self.hexTextField.text];
            //self.hsbTextField.text = [self.rgbConvert RGBToHSBWithRed:red Green:green Blue:blue];
            
            break;
        case HexTextField:
            
            [self.hexConvert hexToRGBWithString:self.hexTextField.text];
            [self.hexConvert hexToHSBWithString:self.hexTextField.text];
            NSLog(@"HEX");
            break;
        case HSBTextField:
            
//            [self.hsbConvert HSBToHexWithHue:<#(float)#> Saturation:<#(float)#> Brightness:<#(float)#>];
//            [self.hsbConvert HSBToRGBWithHue:<#(float)#> Saturation:<#(float)#> Brightness:<#(float)#>];
            NSLog(@"HSB");
            break;
        default:
            break;
    }
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    
    if (textField == self.hexTextField) {
        [self conversionSwitch:HexTextField];
    }
    else if (textField == self.rgbTextField) {
        [self conversionSwitch:RGBTextField];
    }
    else if (textField == self.hsbTextField) {
        [self conversionSwitch:HSBTextField];
    }
    
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

//-(void)textFieldDidBeginEditing:(UITextField *)textField {
//    
//    
//    
//}
//
//-(void)textFieldDidChange :(UITextField *) textField{
//    
//    if (textField == self.hexTextField) {
//        [self conversionSwitch:HexTextField];
//    }
//    else if (textField == self.rgbTextField) {
//        [self conversionSwitch:RGBTextField];
//    }
//    else if (textField == self.hsbTextField) {
//        [self conversionSwitch:HSBTextField];
//    }
//
//}

@end
