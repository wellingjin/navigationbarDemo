//
//  WLHiddeBarViewController.m
//  NavigationDemo
//
//  Created by welling on 17/3/11.
//  Copyright © 2017年 com.welling. All rights reserved.
//

#import "WLHiddeBarViewController.h"
#import "WLHomePageViewController.h"

@interface WLHiddeBarViewController ()

@end

@implementation WLHiddeBarViewController

- (void)loadView{
    [super loadView];
    self.title = @"无导航栏A页面";
    
    UIImageView* bgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, STATUS_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [bgView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:bgView];
    
    UIButton* bgButton = [[UIButton alloc] initWithFrame:CGRectMake(40, STATUS_HEIGHT + NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH - 80, SCREEN_HEIGHT /2)];
    [bgButton addTarget:self action:@selector(gotoHomePage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bgButton];
    
    UIButton* backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, STATUS_HEIGHT, 100, 50)];
    [backButton addTarget:self action:@selector(onBackButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT/2 + 100, SCREEN_WIDTH, 0)];
    [titleLabel setFont:[UIFont systemFontOfSize:30]];
    [titleLabel setText:self.title];
    [titleLabel sizeToFit];
    [titleLabel setTextColor:[UIColor blackColor]];
    [self.view  addSubview:titleLabel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    BOOL hidden = NO?YES : !self.navigationController.navigationBarHidden;
    [self setNavigationBarHidden:hidden animated:YES];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self setNavigationBarHidden:YES animated:NO];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    [self setNavigationBarHidden:NO animated:NO];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
-(void)gotoHomePage{
    [self gotoViewController:[WLHomePageViewController new]];
}


@end
