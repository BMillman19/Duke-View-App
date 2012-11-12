//
//  AppDelegate.m
//  MultipleViewApp
//
//  Created by Brandon Millman on 10/21/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "AppDelegate.h"

#import "DukeWebViewController.h"
#import "ImageScrollerViewController.h"

#define kFirstTabURL @"http://www.goduke.com"
#define kSecondTabURL @"http://admit.duke.edu/"

#define kFirstTabTitle @"Athletics"
#define kSecondTabTitle @"Admission"
#define kThirdTabTitle @"Images"


@implementation AppDelegate

@synthesize firstWebViewController = _firstWebViewController;
@synthesize secondWebViewController = _secondWebViewController;
@synthesize imageScrollerViewController = _imageScrollerViewController;
@synthesize tabBarController = _tabBarController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Set up firstWebViewController`
    self.firstWebViewController = [[DukeWebViewController alloc] initWithNibName:@"DukeWebViewController" bundle:nil];
    self.firstWebViewController.pageURL = kFirstTabURL;
    self.firstWebViewController.title = kFirstTabTitle;
    self.firstWebViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:kFirstTabTitle image:[UIImage imageNamed:@"sports"] tag:0];
    
    // Set up secondWebViewController
    self.secondWebViewController = [[DukeWebViewController alloc] initWithNibName:@"DukeWebViewController" bundle:nil];
    self.secondWebViewController.pageURL = kSecondTabURL;
    self.secondWebViewController.title = kSecondTabTitle;
    self.secondWebViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:kSecondTabTitle image:[UIImage imageNamed:@"academics"] tag:0];
    
    // Set up imageScrollerViewController
    self.imageScrollerViewController = [[ImageScrollerViewController alloc] initWithNibName:@"ImageScrollerViewController" bundle:nil];
    self.imageScrollerViewController.title = kThirdTabTitle;
    self.imageScrollerViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:kThirdTabTitle image:[UIImage imageNamed:@"images"] tag:0];

    
    // Set up tab bar controller
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.delegate = self;
    self.tabBarController.viewControllers = @[self.firstWebViewController, self.secondWebViewController, self.imageScrollerViewController];
    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}




@end
