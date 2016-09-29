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
    
    UIButton *facebook = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    facebook.translatesAutoresizingMaskIntoConstraints = NO;
    [facebook setImage:[UIImage imageNamed:@"cocoaIcon"] forState:UIControlStateNormal];
    facebook.tintColor = [UIColor whiteColor];
    facebook.backgroundColor = [BaseView colorWithHexString:@"3b5998"];
    [self addSubview:facebook];
    
    UIButton *twitter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    twitter.translatesAutoresizingMaskIntoConstraints = NO;
    [twitter setImage:[UIImage imageNamed:@"cocoaIcon"] forState:UIControlStateNormal];
    twitter.tintColor = [UIColor whiteColor];
    twitter.backgroundColor = [BaseView colorWithHexString:@"00aced"];
    [self addSubview:twitter];
    
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:20]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:twitter
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:facebook
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:twitter
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:facebook
                                                     attribute:NSLayoutAttributeHeight
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
                                                        toItem:self
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
