//
//  JQFastLoginView.m
//  LoginDemo
//
//  Created by mzzdxt on 2016/10/14.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "JQFastLoginView.h"

@implementation JQFastLoginView

+ (instancetype)fastLoginView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

@end
