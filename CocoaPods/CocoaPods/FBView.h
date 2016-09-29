//
//  FBView.h
//  cocoapods
//
//  Created by LLDM on 20/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseView.h"

@protocol FBViewDelegate;

@interface FBView : BaseView

@property(nonatomic) id<FBViewDelegate> fbViewDelegate;

@end


@protocol FBViewDelegate <NSObject>

@end