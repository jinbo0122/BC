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
  self.purchasedVC   = [[BCPurchasedVC alloc] init];
  self.purchasedNav  = [[UINavigationController alloc] initWithRootViewController:self.purchasedVC];
  self.wishListVC  = [[BCWishListVC alloc] init];
  self.wishListNav = [[UINavigationController alloc] initWithRootViewController:self.wishListVC];
  self.exploreVC  = [[BCExploreVC alloc] init];
  self.exploreNav = [[UINavigationController alloc] initWithRootViewController:self.exploreVC];
  self.viewControllers = @[self.favNav,self.exploreNav,self.wishListNav,self.purchasedNav];
  
  
  
  self.favNav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
  self.exploreNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore"
                                                             image:[UIImage imageNamed:@"icon_nav_explore"]
                                                               tag:1];
  self.wishListNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Wish List"
                                                              image:[UIImage imageNamed:@"icon_nav_purchased"]
                                                                tag:2];
  self.purchasedNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Purchased"
                                                         image:[UIImage imageNamed:@"icon_nav_purchased"]
                                                           tag:3];
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
