//
//  FBView.m
//  cocoapods
//
//  Created by LLDM on 20/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "FBView.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@implementation FBView

- (void)setupLayout {
    FBSDKLoginButton *loginButton = [FBSDKLoginButton new];
    loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    loginButton.center = self.center;
    [self addSubview:loginButton];
}

@end
