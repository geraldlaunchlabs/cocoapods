//
//  TwitViewController.m
//  cocoapods
//
//  Created by LLDM on 30/09/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "TwitViewController.h"

@interface TwitViewController ()

@end

@implementation TwitViewController

- (void)loadView {
    [super viewDidLoad];
    [self initialize];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initialize {
    [BaseView setUINaviagtionBar:self.navigationController.navigationBar
                           title:@"TWITTER"
                            font:@"Gotham-Heavy"
                    barTintColor:[BaseView colorWithHexString:@"1DA1F2"]
                       tintColor:[UIColor whiteColor]
                     translucent:NO];
    
    twitView = [TwitView new];
    [twitView setupLayout];
    self.view = twitView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
