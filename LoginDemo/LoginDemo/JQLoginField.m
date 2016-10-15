//
//  JQLoginField.m
//  LoginDemo
//
//  Created by mzzdxt on 2016/10/16.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "JQLoginField.h"
#import "UITextField+Placeholder.h"

// 需求：文本框光标变为白色，文本框开始编辑的时候，占位文字颜色变成白色

@implementation JQLoginField

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // 设置光标的颜色为白色
    self.tintColor = [UIColor whiteColor];
    
    // 监听文本框的编辑（原则：不要自己成为代理）
    
    // 开始编辑
    [self addTarget:self action:@selector(textBegin) forControlEvents:UIControlEventEditingDidBegin];
    
    // 结束编辑
    [self addTarget:self action:@selector(textEnd) forControlEvents:UIControlEventEditingDidEnd];
    
    // 文本框文字改变
    [self addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];

    // 获取占位文字控件
    self.placeholderColor = [UIColor grayColor];
    
    // 思路：文本框中的占位文字可能是label --> 拿到label --> 利用runtime查看label的属性名
}

// 文本框开始编辑时调用
- (void)textBegin {
    self.placeholderColor = [UIColor whiteColor];
    
    if(self.text.length > 0) {
        self.textColor = [UIColor whiteColor];
    }
}

// 文本框结束编辑时调用
- (void)textEnd {
    self.placeholderColor = [UIColor grayColor];
    
    if(self.text.length > 0) {
        self.textColor = [UIColor grayColor];
    }
}

// 文本框文字改变时调用
- (void)textChange {
    if(self.text.length > 0) {
        self.textColor = [UIColor whiteColor];
    } else {
        self.textColor = [UIColor grayColor];
    }
}

@end
