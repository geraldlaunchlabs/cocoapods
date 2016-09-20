//
//  FBViewController.m
//  cocoapods
//
//  Created by LLDM on 20/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "FBViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface FBViewController ()

@end

@implementation FBViewController

@synthesize loginButton;

- (void)loadView {
    [super viewDidLoad];
    [self initView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initView {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                    barTintColor:[UIColor blueColor]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    fbView = [FBView new];
    fbView.baseViewDelegate = self;
    [fbView setupLayout];
    self.view = fbView;
}

- (void)viewDidAppear:(BOOL)animated {
    
    if ([FBSDKAccessToken currentAccessToken]) {
        
        NSLog(@"Logged In...");
    } else {
        NSLog(@"Not Logged In...");
    }
}

- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error {
    
}

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
