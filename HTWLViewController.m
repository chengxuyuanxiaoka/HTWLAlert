//
//  MainViewController.m
//  DXAlertView
//
//  Created by xiekw on 13-9-12.
//  Copyright (c) 2013年 xiekw. All rights reserved.
//

#import "HTWLViewController.h"
#import "HTWLAlertView.h"

@interface HTWLViewController ()

@end

@implementation HTWLViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"点击" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(twoBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(125, 100, 100, 50);
    [self.view addSubview:btn1];
}

- (void)twoBtnClicked:(id)sender
{
    HTWLAlertView *alert = [[HTWLAlertView alloc] initWithTitle:@"下线通知" contentText:@"您的账号已被另一台手机登录，如非本人操作，建议立即前往账户修改密码。" leftButtonTitle:@"重新登录" rightButtonTitle:@"退出"];
    [alert show];
    alert.leftBlock = ^() {
        NSLog(@"left button clicked");
    };
    alert.rightBlock = ^() {
        NSLog(@"right button clicked");
    };
    alert.dismissBlock = ^() {
        NSLog(@"Do something interesting after dismiss block");
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
