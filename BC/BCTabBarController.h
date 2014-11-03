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
@property(nonatomic, strong)UINavigationController *getNav;
@property(nonatomic, strong)UINavigationController *wantNav;
@property(nonatomic, strong)UINavigationController *freeNav;
@property(nonatomic, strong)BCFavVC                *favVC;
@property(nonatomic, strong)BCGetVC                *getVC;
@property(nonatomic, strong)BCFreeVC               *freeVC;
@property(nonatomic, strong)BCWantVC               *wantVC;

@end
