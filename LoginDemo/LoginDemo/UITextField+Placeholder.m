//
//  UITextField+Placeholder.m
//  LoginDemo
//
//  Created by mzzdxt on 2016/10/16.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "UITextField+Placeholder.h"
#import <objc/message.h>

@implementation UITextField (Placeholder)

+ (void)load {
    Method setPlaceholderMethod = class_getClassMethod(self, @selector(setPlaceholder:));
    Method setCustomPlaceholderMethod = class_getClassMethod(self, @selector(setCustomPlaceholder:));
    
    method_exchangeImplementations(setPlaceholderMethod, setCustomPlaceholderMethod);
}

// 设置占位文字颜色的系统默认方法
- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    // 给成员属性赋值，runtime给系统的类添加成员属性
    objc_setAssociatedObject(self, @"placeholderColor", placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    // 获取站为文字label控件
    UILabel *placeHolderLabel = [self valueForKey:@"placeholderLabel"];
    
    // 设置站为文字颜色
    placeHolderLabel.textColor = placeholderColor;
}

- (UIColor *)placeholderColor {
    return objc_getAssociatedObject(self, @"placeholderColor");
}

// 设置自定义占位文字颜色
- (void)setCustomPlaceholder:(NSString *)placeholder {
    [self setCustomPlaceholder:placeholder];
    
    self.placeholderColor = self.placeholderColor;
}

@end
