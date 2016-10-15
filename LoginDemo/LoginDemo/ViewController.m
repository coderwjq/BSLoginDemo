//
//  ViewController.m
//  LoginDemo
//
//  Created by wangjiaqi on 16/10/13.
//  Copyright © 2016年 jiaqibear. All rights reserved.
//

#import "ViewController.h"
#import "JQLoginRegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 点击跳转至登录注册界面
- (IBAction)clickLoginRegister:(id)sender {
    
    // 1.初始化登录注册界面
    JQLoginRegisterViewController *loginVc = [[JQLoginRegisterViewController alloc] init];
    
    // 2.以Modal的形式进行跳转
    [self presentViewController:loginVc animated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
