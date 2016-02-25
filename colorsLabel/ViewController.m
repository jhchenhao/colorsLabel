//
//  ViewController.m
//  colorsLabel
//
//  Created by jhtxch on 16/2/25.
//  Copyright © 2016年 jhtxch. All rights reserved.
//

#import "ViewController.h"
#import "ColorsLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ColorsLabel *label = [ColorsLabel new];
    label.frame = CGRectMake(100, 100, 100, 100);
    label.text = @"测试文字测试文字测试文字测试文字测试文字";
    label.numberOfLines = 0;
    
    label.colors = @[[UIColor purpleColor],[UIColor blackColor], [UIColor orangeColor]];
    label.textDirection = TEXTDIRECTIONTOPTOBOTTOM;
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
