//
//  JQFastLoginButton.m
//  LoginDemo
//
//  Created by wangjiaqi on 16/10/13.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "JQFastLoginButton.h"

@implementation JQFastLoginButton

// 自定义UIButton需要重新布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 1.获取UIButton默认imageView的属性
    CGRect imageRect = self.imageView.frame;
    CGPoint imageCenter = self.imageView.center;
    
    // 2.设置图片的位置
    imageRect.origin.y = 0;
    self.imageView.frame = imageRect;
    
    imageCenter.x = self.frame.size.width * 0.5;
    imageCenter.y = self.imageView.frame.size.height * 0.5;
    self.imageView.center = imageCenter;
    
    // 3.获取UIButton默认titleLabel的属性
    CGRect titleRect = self.titleLabel.frame;
    titleRect.origin.y = self.imageView.frame.size.height + 5;
    self.titleLabel.frame = titleRect;
    
    [self.titleLabel sizeToFit];
    
    CGPoint titleCenter = self.titleLabel.center;
    titleCenter.x = self.frame.size.width * 0.5;
    self.titleLabel.center = titleCenter;
    
}

@end
