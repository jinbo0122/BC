//
//  BCGetVC.m
//  BC
//
//  Created by Albert Lee on 11/3/14.
//  Copyright (c) 2014 Albert Lee. All rights reserved.
//

#import "BCPurchasedVC.h"

@interface BCPurchasedVC ()

@end

@implementation BCPurchasedVC

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.navigationItem.titleView = [UILabel titleLabel:@"Purchased" color:[UIColor whiteColor]];
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
