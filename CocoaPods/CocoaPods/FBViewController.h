//
//  FBViewController.h
//  cocoapods
//
//  Created by LLDM on 20/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseViewController.h"
#import "FBView.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface FBViewController : BaseViewController {
    FBView *fbView;
}

@property (strong, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@end
