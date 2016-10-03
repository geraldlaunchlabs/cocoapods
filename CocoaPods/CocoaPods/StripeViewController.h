//
//  StripeViewController.h
//  cocoapods
//
//  Created by LLDM on 03/10/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseViewController.h"
#import "StripeView.h"
#import <Stripe/Stripe.h>

@interface StripeViewController : BaseViewController<STPAddCardViewControllerDelegate> {
    StripeView *stripeView;
}

@end
