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
    [self initialize];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initialize {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                           title:@"COCOAPODS"
                            font:@"Gotham-Heavy"
                    barTintColor:[BaseView colorWithHexString:@"FA2A01"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    homeView = [HomeView new];
    homeView.baseViewDelegate = self;
    [homeView setupLayout];
    self.view = homeView;
    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

@end
