//
//  ViewController.m
//  ColorCodeConverter
//
//  Created by Eli MArshall on 12/1/16.
//  Copyright © 2016 Eli MArshall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.colorsView = [[PaletteView alloc] initWithFrame:CGRectMake(100, 50, self.view.frame.size.width - 200, self.view.frame.size.height - 100)];
    [self.view addSubview:self.colorsView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
