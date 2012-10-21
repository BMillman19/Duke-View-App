//
//  MenuViewController.m
//  MultipleViewApp
//
//  Created by Brandon Millman on 10/21/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "MenuViewController.h"

#import "AppDelegate.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    UIViewController *nextController;
    
    switch (sender.tag) {
        case 0:
            nextController = [AppDelegate sharedAppDelegate].webViewController;
            break;
        case 1:
            nextController = [AppDelegate sharedAppDelegate].imageFlipperViewController;
            break;
        default:
            break;
    }
    
    [self.navigationController pushViewController:nextController animated:YES];
}

@end
