//
//  UITextField+Placeholder.h
//  LoginDemo
//
//  Created by mzzdxt on 2016/10/16.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Placeholder)

// 占位文字的颜色
@property (nonatomic, retain) UIColor *placeholderColor;

// 设置占位文字
- (void)setCustomPlaceholder:(NSString *)placeholder;

@end
