//
//  FristViewController.m
//  关于 代理delegate
//
//  Created by Apple on 16-5-17.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import "FristViewController.h"

@interface FristViewController ()
@property (nonatomic,strong) UITextField * label;
@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"上一页" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    _label = [[UITextField alloc]initWithFrame:CGRectMake(80, 200, 100, 30)];
    _label.layer.borderWidth = 1;
    _label.layer.cornerRadius = 5;
    [self.view addSubview:_label];
}

//上一页返回事件
- (void)btnClick:(UIButton *)btn{
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(changVauleToViewCtrl:)]) {
        [self.delegate changVauleToViewCtrl:_label.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
