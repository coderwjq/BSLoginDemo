//
//  JQLoginRegisterView.m
//  LoginDemo
//
//  Created by wangjiaqi on 16/10/13.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "JQLoginRegisterView.h"

// 越复杂的界面，越需要进行封装；
// 有特殊效果的界面，也需要进行封装；

@interface JQLoginRegisterView ()

@property (weak, nonatomic) IBOutlet UIButton *loginRegisterButton;

@end

@implementation JQLoginRegisterView

+ (instancetype)loginView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

+ (instancetype)registerView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UIImage *image = _loginRegisterButton.currentBackgroundImage;
    
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    // 让按钮背景图片不要被拉伸
    [_loginRegisterButton setBackgroundImage:image forState:UIControlStateNormal];
}

@end
