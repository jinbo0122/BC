//
//  BCTabBarController.h
//  BC
//
//  Created by Albert Lee on 11/3/14.
//  Copyright (c) 2014 Albert Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCTabBarController : UITabBarController
@property(nonatomic, strong)UINavigationController *favNav;
@property(nonatomic, strong)UINavigationController *exploreNav;
@property(nonatomic, strong)UINavigationController *purchasedNav;
@property(nonatomic, strong)UINavigationController *wishListNav;
@property(nonatomic, strong)BCFavVC                *favVC;
@property(nonatomic, strong)BCPurchasedVC          *purchasedVC;
@property(nonatomic, strong)BCExploreVC            *exploreVC;
@property(nonatomic, strong)BCWishListVC           *wishListVC;

@end
