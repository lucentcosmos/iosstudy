//
//  TBAppDelegate.h
//  TableView
//
//  Created by work on 3/21/13.
//  Copyright (c) 2013 work. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TBViewController;

@interface TBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TBViewController *viewController;

@property (strong, nonatomic) UINavigationController *navController;

@end
