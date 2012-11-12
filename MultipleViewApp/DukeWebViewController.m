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
@synthesize pageURL = _pageURL;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadPage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setPageURL:(NSString *)pageURL
{
    _pageURL = [pageURL copy];
    [self loadPage];
}

- (void)loadPage
{
    if (self.pageURL) {
        NSURL *url = [NSURL URLWithString:self.pageURL];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:req];
    }
}

@end
