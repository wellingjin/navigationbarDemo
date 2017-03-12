//
//  WLNavigatiobBarShowViewController.m
//  NavigationDemo
//
//  Created by welling on 17/3/11.
//  Copyright © 2017年 com.welling. All rights reserved.
//

#import "WLNavigatiobBarShowViewController.h"

@interface WLNavigatiobBarShowViewController ()

@end

@implementation WLNavigatiobBarShowViewController

- (void)loadView{
    [super loadView];
    UIImageView* bgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, STATUS_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [bgView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:bgView];
    
    UIButton* bgButton = [[UIButton alloc] initWithFrame:CGRectMake(40, STATUS_HEIGHT + NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH - 80, SCREEN_HEIGHT/2)];
    [bgButton setBackgroundColor:[UIColor blueColor]];
    [bgButton addTarget:self action:@selector(gotoVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bgButton];
    
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT/2 + 100, SCREEN_WIDTH, 0)];
    [titleLabel setFont:[UIFont systemFontOfSize:30]];
    [titleLabel setText:self.title];
    [titleLabel sizeToFit];
    [titleLabel setTextColor:[UIColor blackColor]];
    [self.view  addSubview:titleLabel];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
-(void)gotoVC{
    WLNavigatiobBarShowViewController* vc = [WLNavigatiobBarShowViewController new];
    vc.title = @"BBB";
    [vc.navigationController.navigationBar setBackgroundColor:[UIColor greenColor]];
    [self gotoViewController:vc];
}


@end
