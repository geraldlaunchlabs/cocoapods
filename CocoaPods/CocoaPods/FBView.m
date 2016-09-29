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
    self.backgroundColor = [UIColor whiteColor];
    
    FBSDKLoginButton *loginButton = [FBSDKLoginButton new];
    loginButton.translatesAutoresizingMaskIntoConstraints = NO;
    loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    loginButton.center = self.center;
    [self addSubview:loginButton];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:loginButton
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:loginButton
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:0]];
}

@end
