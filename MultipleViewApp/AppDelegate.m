//
//  AppDelegate.m
//  MultipleViewApp
//
//  Created by Brandon Millman on 10/21/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "AppDelegate.h"

#import "DukeWebViewController.h"
#import "MenuViewController.h"
#import "ImageFlipperViewController.h"

@implementation AppDelegate

@synthesize webViewController = _webViewController;
@synthesize imageFlipperViewController = _imageFlipperViewController;
@synthesize menuViewController = _menuViewController;
@synthesize navController = _navController;

+ (AppDelegate *)sharedAppDelegate
{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.menuViewController = [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
    self.navController = [[UINavigationController alloc]  initWithRootViewController:self.menuViewController];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (DukeWebViewController *)webViewController
{
    if (!_webViewController) {
        _webViewController = [[DukeWebViewController alloc] initWithNibName:@"DukeWebViewController" bundle:nil];
    }
    return _webViewController;
}

- (ImageFlipperViewController *)imageFlipperViewController
{
    if (!_imageFlipperViewController) {
        _imageFlipperViewController = [[ImageFlipperViewController alloc] initWithNibName:@"ImageFlipperViewController" bundle:nil];
    }
    return _imageFlipperViewController;
}


@end
