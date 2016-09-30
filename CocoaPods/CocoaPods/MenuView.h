//
//  MenuView.h
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseView.h"


@protocol MenuViewDelegate;

@interface MenuView : BaseView

@property(nonatomic) id<MenuViewDelegate> menuViewDelegate;

@end


@protocol MenuViewDelegate<NSObject>

- (IBAction)gotoSender:(id)sender;

@end