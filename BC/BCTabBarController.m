//
//  BCTabBarController.m
//  BC
//
//  Created by Albert Lee on 11/3/14.
//  Copyright (c) 2014 Albert Lee. All rights reserved.
//

#import "BCTabBarController.h"

@interface BCTabBarController ()

@end

@implementation BCTabBarController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationSlide];
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
  [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRGBHex:0xed285b]];
  [[UITabBar appearance] setBarTintColor:[UIColor colorWithRGBHex:0xed285b]];
  [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
  self.favVC   = [[BCFavVC alloc] init];
  self.favNav  = [[UINavigationController alloc] initWithRootViewController:self.favVC];
  self.getVC   = [[BCGetVC alloc] init];
  self.getNav  = [[UINavigationController alloc] initWithRootViewController:self.getVC];
  self.wantVC  = [[BCWantVC alloc] init];
  self.wantNav = [[UINavigationController alloc] initWithRootViewController:self.wantVC];
  self.freeVC  = [[BCFreeVC alloc] init];
  self.freeNav = [[UINavigationController alloc] initWithRootViewController:self.freeVC];
  
  self.viewControllers = @[self.favNav,self.getNav,self.wantNav,self.freeNav];
  self.favNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
  self.getNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
  self.wantNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:2];
  self.freeNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:3];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
