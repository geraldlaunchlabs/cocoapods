//
//  HomeViewController.h
//  cocoapods
//
//  Created by LLDM on 28/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "JASidePanelController.h"
#import "UIViewController+JASidePanel.h"
#import "HomeView.h"

@interface HomeViewController : BaseViewController {
    HomeView *homeView;
}

@end
