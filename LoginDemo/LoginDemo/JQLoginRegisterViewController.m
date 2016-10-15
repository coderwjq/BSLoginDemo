//
//  JQLoginRegisterViewController.m
//  LoginDemo
//
//  Created by wangjiaqi on 16/10/13.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "JQLoginRegisterViewController.h"
#import "JQLoginRegisterView.h"
#import "JQFastLoginView.h"

// 1.划分界面结构：顶部、中间、底部
// 2.单独设计这三个模块（越复杂的界面，越要进行封装）

@interface JQLoginRegisterViewController ()

@property (weak, nonatomic) IBOutlet UIView *middleView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadCons;
    
@property (nonatomic, assign) bool isLogin;

@end

@implementation JQLoginRegisterViewController

- (IBAction)clickClose:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)clickRegister:(UIButton *)sender {
    if(_isLogin) {
        [sender setTitle:@"返回登录" forState:UIControlStateNormal];
        _isLogin = !_isLogin;
    } else {
        [sender setTitle:@"立即注册" forState:UIControlStateNormal];
        _isLogin = !_isLogin;
    }
    
    // 获取当前设备屏幕的宽度
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    _leadCons.constant = _leadCons.constant == 0 ? -screenWidth : 0;
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _isLogin = YES;
    
    // 创建LoginView
    JQLoginRegisterView *loginView = [JQLoginRegisterView loginView];
    // 添加LoginView
    [self.middleView addSubview:loginView];
    
    // 创建并添加RegisterView
    JQLoginRegisterView *registerView = [JQLoginRegisterView registerView];
    [self.middleView addSubview:registerView];
    
    // 创建并添加FastLoginView
    JQFastLoginView *fastLoginView = [JQFastLoginView fastLoginView];
    [self.bottomView addSubview:fastLoginView];
}

// 调用此方法才会根据布局调整控件的尺寸
- (void)viewDidLayoutSubviews {
    // 一定要首先调用super
    [super viewDidLayoutSubviews];
    
    // 获取当前设备屏幕的宽度
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    // 设置LoginView
    JQLoginRegisterView *loginView = self.middleView.subviews[0];
    loginView.frame = CGRectMake(0, 0, screenWidth, self.middleView.frame.size.height);
    
    // 设置RegisterView
    JQLoginRegisterView *registerView = self.middleView.subviews[1];
    registerView.frame = CGRectMake(screenWidth, 0, screenWidth, self.middleView.frame.size.height);
    
    // 设置FastLoginView
    JQFastLoginView *fastLoginView = self.bottomView.subviews[0];
    fastLoginView.frame = CGRectMake(0, 0, screenWidth, self.bottomView.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 设置状态栏文字为白色
- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}

@end
