//
//  StripeView.m
//  cocoapods
//
//  Created by LLDM on 03/10/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "StripeView.h"

@implementation StripeView

@synthesize label;

- (void)setupLayout {
    self.backgroundColor = [UIColor whiteColor];
    
    label = [UILabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = nil;
    [self addSubview:label];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:0]];
}

@end
