//
//  MenuView.m
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "MenuView.h"

@implementation MenuView

- (void)setupLayout {
    self.backgroundColor = [BaseView colorWithHexString:@"FA2A01"];
    
    UIButton *cocoa = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cocoa.translatesAutoresizingMaskIntoConstraints = NO;
    [cocoa setImage:[UIImage imageNamed:@"cocoaIcon"] forState:UIControlStateNormal];
    cocoa.tintColor = [UIColor whiteColor];
    //cocoa.backgroundColor = [BaseView colorWithHexString:@"FA2A01"];
    cocoa.tag = 1;
    [cocoa addTarget:_menuViewDelegate action:@selector(gotoSender:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:cocoa];
    
    UIButton *facebook = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    facebook.translatesAutoresizingMaskIntoConstraints = NO;
    [facebook setImage:[UIImage imageNamed:@"fbIcon"] forState:UIControlStateNormal];
    facebook.tintColor = [UIColor whiteColor];
    facebook.backgroundColor = [BaseView colorWithHexString:@"415DAE"];
    facebook.tag = 2;
    [facebook addTarget:_menuViewDelegate action:@selector(gotoSender:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:facebook];
    
    UIButton *twitter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    twitter.translatesAutoresizingMaskIntoConstraints = NO;
    [twitter setImage:[UIImage imageNamed:@"twitIcon"] forState:UIControlStateNormal];
    twitter.tintColor = [UIColor whiteColor];
    twitter.backgroundColor = [BaseView colorWithHexString:@"1DA1F2"];
    twitter.tag = 3;
    [twitter addTarget:_menuViewDelegate action:@selector(gotoSender:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:twitter];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:cocoa
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:20]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:cocoa
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:cocoa
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:.8
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:cocoa
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:facebook
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cocoa
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cocoa
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:cocoa
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:twitter
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:twitter
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:facebook
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:twitter
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:twitter
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:facebook
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:twitter
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];

}

@end
