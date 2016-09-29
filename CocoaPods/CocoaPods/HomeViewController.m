//
//  HomeViewController.m
//  cocoapods
//
//  Created by LLDM on 28/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)loadView {
    [super viewDidLoad];
    [self initView];
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)initView {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                    barTintColor:[BaseView colorWithHexString:@"FA2A01"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    self.navigationController.navigationBar.topItem.title = @"COCOAPODS";
    [self.navigationController.navigationBar setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor],
      NSForegroundColorAttributeName,
      [UIFont fontWithName:@"Gotham-Heavy" size:0],
      NSFontAttributeName,
      nil]];
    
    homeView = [HomeView new];
    homeView.baseViewDelegate = self;
    [homeView setupLayout];
    self.view = homeView;
    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
}




@end
