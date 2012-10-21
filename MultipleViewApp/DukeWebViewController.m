//
//  DukeWebViewController.m
//  DukeWeb
//
//  Created by Michael on 10/6/12.
//  Modified by Brandon Millman on 10/21/12
//  Copyright (c) 2012 ECE. All rights reserved.
//

#import "DukeWebViewController.h"

@interface DukeWebViewController ()

@end

@implementation DukeWebViewController

@synthesize webView = _webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://www.goduke.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
