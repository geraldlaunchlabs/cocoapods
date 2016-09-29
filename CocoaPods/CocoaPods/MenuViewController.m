//
//  MenuViewController.m
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)loadView {
    [super viewDidLoad];
    [self initView];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)initView {    
    menuView = [MenuView new];
    menuView.baseViewDelegate = self;
    [menuView setupLayout];
    self.view = menuView;
    
    //    [self.navigationController setNavigationBarHidden:YES animated:YES];
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
