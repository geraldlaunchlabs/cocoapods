//
//  StripeViewController.m
//  cocoapods
//
//  Created by LLDM on 03/10/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "StripeViewController.h"

@interface StripeViewController () {
    
}

@end

@implementation StripeViewController

- (void)loadView {
    [super viewDidLoad];
    [self initialize];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initialize {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                           title:@"STRIPE"
                            font:@"Gotham-Heavy"
                    barTintColor:[BaseView colorWithHexString:@"0075C5"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    stripeView = [StripeView new];
    [stripeView setupLayout];
    self.view = stripeView;
    
    [[STPTheme defaultTheme]setPrimaryBackgroundColor:[[BaseView colorWithHexString:@"0075C5"]colorWithAlphaComponent:0.073]];
    [[STPTheme defaultTheme]setAccentColor:[UIColor whiteColor]];
    [[STPTheme defaultTheme]setSecondaryForegroundColor:[UIColor blackColor]];
    
    STPAddCardViewController *addCardViewController = [[STPAddCardViewController alloc] init];
    addCardViewController.delegate = self;
    // STPAddCardViewController must be shown inside a UINavigationController.
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:addCardViewController];
    
    [BaseView setUINaviagtionBar:addCardViewController.navigationController.navigationBar
                           title:@"STRIPE"
                            font:@"Gotham-Heavy"
                    barTintColor:[BaseView colorWithHexString:@"0075C5"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    [self presentViewController:navigationController animated:YES completion:nil];
}

#pragma mark STPAddCardViewControllerDelegate

- (void)addCardViewControllerDidCancel:(STPAddCardViewController *)addCardViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addCardViewController:(STPAddCardViewController *)addCardViewController
               didCreateToken:(STPToken *)token
                   completion:(STPErrorBlock)completion {
    [self submitTokenToBackend:token completion:^(NSError *error) {
        if (error) {
            completion(error);
        } else {
            stripeView.label.text = [NSString stringWithFormat:@"Token: %@",token];
            [self dismissViewControllerAnimated:YES completion:^{
                [self showReceiptPage];
            }];
        }
    }];
}

- (void)submitTokenToBackend:token completion:(void(^)(NSError *error))completionHandler {
    NSError *err = nil;
    
    NSLog(@"\n\n\n%@",token);
    completionHandler(err);
}

-(void)showReceiptPage {
    NSLog(@"\n\n\nReceipt");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
