//
//  ViewController.m
//  关于 代理delegate
//
//  Created by Apple on 16-5-17.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "FristViewController.h"
@interface ViewController ()<changeDeldgate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonClick:(id)sender {
    FristViewController * fristV = [[FristViewController alloc]init];
    fristV.delegate = self;
    [self presentViewController:fristV animated:YES completion:nil];
}

- (void)changVauleToViewCtrl:(NSString *)string{
    _label.text = string;
}

@end
