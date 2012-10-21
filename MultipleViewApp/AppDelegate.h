//
//  AppDelegate.h
//  MultipleViewApp
//
//  Created by Brandon Millman on 10/21/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DukeWebViewController;
@class MenuViewController;
@class ImageFlipperViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (AppDelegate *)sharedAppDelegate;

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DukeWebViewController *webViewController;
@property (strong, nonatomic) MenuViewController *menuViewController;
@property (strong, nonatomic) ImageFlipperViewController *imageFlipperViewController;
@property (strong, nonatomic) UINavigationController *navController;

@end
