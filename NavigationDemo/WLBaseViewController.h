//
//  ViewController.h
//  NavigationDemo
//
//  Created by welling on 17/3/11.
//  Copyright © 2017年 com.welling. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCREEN_WIDTH   ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define STATUS_HEIGHT 20
#define NAVIGATIONBAR_HEIGHT 44

@interface WLBaseViewController : UIViewController

@property(nonatomic,assign)BOOL navigationBarHidden;

- (void)setNavigationBarHidden:(BOOL)navigationBarHidden animated:(BOOL)animated;


#pragma mark  public-methon
- (void)WL_LOG:(NSString*)log;
- (void)gotoViewController:(UIViewController*)vc;
- (void)onBackButton;

UIImage* imageWithName(NSString* name);

@end

