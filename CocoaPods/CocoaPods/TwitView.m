//
//  TwitView.m
//  cocoapods
//
//  Created by LLDM on 30/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "TwitView.h"
#import <TwitterKit/TwitterKit.h>

@implementation TwitView

- (void)setupLayout {
    self.backgroundColor = [UIColor whiteColor];
    
    TWTRLogInButton *loginButton = [TWTRLogInButton buttonWithLogInCompletion:^(TWTRSession *session, NSError *error) {
        if (session) {
            // Callback for login success or failure. The TWTRSession
            // is also available on the [Twitter sharedInstance]
            // singleton.
            //
            // Here we pop an alert just to give an example of how
            // to read Twitter user info out of a TWTRSession.
            //
            // TODO: Remove alert and use the TWTRSession's userID
            // with your app's user model
            
//            NSString *message = [NSString stringWithFormat:@"@%@ logged in! (%@)",
//                                 [session userName], [session userID]];
//            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Logged in!"
//                                                            message:message
//                                                           delegate:nil
//                                                  cancelButtonTitle:@"OK"
//                                                  otherButtonTitles:nil];
//            [alert show];
            
        } else {
            NSLog(@"Login error: %@", [error localizedDescription]);
        }
    }];
    loginButton.translatesAutoresizingMaskIntoConstraints = NO;
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
