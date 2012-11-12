//
//  AppDelegate.h
//  MultipleViewApp
//
//  Created by Brandon Millman on 10/21/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DukeWebViewController;
@class ImageScrollerViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DukeWebViewController *firstWebViewController;
@property (strong, nonatomic) DukeWebViewController *secondWebViewController;
@property (strong, nonatomic) ImageScrollerViewController *imageScrollerViewController;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
