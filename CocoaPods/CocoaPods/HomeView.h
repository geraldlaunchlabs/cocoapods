//
//  HomeView.h
//  cocoapods
//
//  Created by LLDM on 29/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "BaseView.h"

@protocol HomeViewDelegate;

@interface HomeView : BaseView

@property(nonatomic) id<HomeViewDelegate> homeViewDelegate;

@end


@protocol HomeViewDelegate <NSObject>

@end