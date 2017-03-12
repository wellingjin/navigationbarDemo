//
//  ViewController.m
//  NavigationDemo
//
//  Created by welling on 17/3/11.
//  Copyright © 2017年 com.welling. All rights reserved.
//

#import "WLBaseViewController.h"
#define GestureEnable 1

@interface WLBaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation WLBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self WL_LOG:@"viewDidLoad"];
    
    
    if (self.navigationController.viewControllers.count > 1) {
        if (GestureEnable) {
            id target = self.navigationController.interactivePopGestureRecognizer.delegate;
            
            // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
            UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
            
            // 设置手势代理，拦截手势触发
            pan.delegate = self;
            
            // 给导航控制器的view添加全屏滑动手势
            [self.view addGestureRecognizer:pan];
            
            // 禁止使用系统自带的滑动手势
            self.navigationController.interactivePopGestureRecognizer.enabled = NO;
        }
        //重新创建一个barButtonItem
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(onBackButton)];
        [backItem setImage:imageWithName(@"back.png")];
        
        //设置backBarButtonItem即可
        self.navigationItem.leftBarButtonItem = backItem;
    }
    
    
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self WL_LOG:@"viewWillAppear"];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self WL_LOG:@"viewDidAppear"];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self WL_LOG:@"viewWillDisappear"];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self WL_LOG:@"viewDidDisappear"];
}

#pragma mark ---------

- (void)setNavigationBarHidden:(BOOL)navigationBarHidden{
    [self setNavigationBarHidden:navigationBarHidden animated:NO];
}

- (void)setNavigationBarHidden:(BOOL)navigationBarHidden animated:(BOOL)animated{
    _navigationBarHidden = navigationBarHidden;
//    self.navigationController.navigationBar.alpha = !navigationBarHidden;
    [self.navigationController setNavigationBarHidden:navigationBarHidden animated:animated];
}


- (void)WL_LOG:(id)log{
    NSLog(@"%@ : %@",self.class,log);
}

UIImage* imageWithName(NSString* name){
    UIImage* image = [UIImage imageNamed:name];
    if (image == nil) {
        name = [NSString stringWithFormat:@"resource/%@",name];
        image = [UIImage imageNamed:name];
    }
    return image;
}

#pragma mark

- (void)gotoViewController:(UIViewController*)vc{
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onBackButton{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
