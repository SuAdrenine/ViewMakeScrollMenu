//
//  ViewController.m
//  ViewMakeScrollMenu
//
//  Created by xby on 2017/2/15.
//  Copyright © 2017年 xby. All rights reserved.
//

#import "ViewController.h"
#import "XBYScrollerMenuView.h"

@interface ViewController ()<XBYScrollerMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    XBYScrollerMenuView *vc=[[XBYScrollerMenuView alloc]initWithFrame:CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width, 50) showArrayButton:YES];
    vc.delegate=self;
    vc.backgroundColor=[UIColor greenColor];
    vc.selectedColor=[UIColor blueColor];
    vc.noSlectedColor=[UIColor blackColor];
    vc.myTitleArray=@[@"推荐",@"视频",@"图片",@"段子",@"订阅",@"同城",@"交友圈"];
    vc.currentIndex=0;
    [self.view addSubview:vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
