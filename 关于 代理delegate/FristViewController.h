//
//  FristViewController.h
//  关于 代理delegate
//
//  Created by Apple on 16-5-17.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark -- 创建协议
@protocol changeDeldgate <NSObject>

- (void)changVauleToViewCtrl:(NSString *)string;

@end

@interface FristViewController : UIViewController

@property (nonatomic,assign) id<changeDeldgate> delegate;

@end
