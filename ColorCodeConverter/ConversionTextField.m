//
//  ConversionTextField.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/13/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "ConversionTextField.h"

@implementation ConversionTextField

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    self.font = [UIFont fontWithName:@"Avenir-Book" size:20.0];
    self.textAlignment = NSTextAlignmentCenter;
    
}


@end
