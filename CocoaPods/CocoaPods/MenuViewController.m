//
//  MenuViewController.m
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "MenuViewController.h"
#import "HomeViewController.h"
#import "FBViewController.h"
#import "TwitViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)initialize {
    menuView = [MenuView new];
    [menuView setupLayout];
    self.view = menuView;
    
    //    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark - Go to Profile View

- (IBAction)gotoSender:(id)sender {
    switch((int)((UIButton *)sender).tag) {
        case 1: self.sidePanelController.centerPanel = [[UINavigationController alloc]initWithRootViewController:[[HomeViewController alloc]init]];
            break;
        case 2: self.sidePanelController.centerPanel = [[UINavigationController alloc]initWithRootViewController:[[FBViewController alloc]init]];
            break;
        case 3: self.sidePanelController.centerPanel = [[UINavigationController alloc]initWithRootViewController:[[TwitViewController alloc]init]];
            break;
        default: [self.sidePanelController showCenterPanelAnimated:YES];
            break;
    }
    
}

@end
