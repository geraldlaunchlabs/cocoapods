//
//  HomeView.m
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

- (void)setupLayout {
    self.backgroundColor = [UIColor whiteColor];
    
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.25];
    }
    
    UIImageView *appIcon = [UIImageView new];
    appIcon.translatesAutoresizingMaskIntoConstraints = NO;
    appIcon.image = [UIImage imageNamed:@"cocoaIcon"];
    appIcon.image = [appIcon.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    appIcon.tintColor = [BaseView colorWithHexString:@"FA2A01"];
    [BaseView addShadowToImageView:appIcon];

    [self addSubview:appIcon];
    
    UIImageView *appLogo = [UIImageView new];
    appLogo.translatesAutoresizingMaskIntoConstraints = NO;
    appLogo.image = [UIImage imageNamed:@"cocoaLogo"];
    appLogo.image = [appLogo.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    appLogo.tintColor = [BaseView colorWithHexString:@"FA2A01"];
    [BaseView addShadowToImageView:appLogo];

    [self addSubview:appLogo];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:appIcon
                                                           attribute:NSLayoutAttributeCenterX
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self
                                                           attribute:NSLayoutAttributeCenterX
                                                          multiplier:1
                                                            constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:appIcon
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:appLogo
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:appLogo
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:0]];
}

@end
