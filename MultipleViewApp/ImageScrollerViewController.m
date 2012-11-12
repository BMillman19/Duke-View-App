//
//  ImageScrollerViewController.m
//  MultipleViewApp
//
//  Created by Brandon Millman on 11/12/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "ImageScrollerViewController.h"

#import <QuartzCore/QuartzCore.h>

#define kNumImages 5

@interface ImageScrollerViewController ()

@end

@implementation ImageScrollerViewController

@synthesize scrollView = _scrollView;
@synthesize frameView = _frameView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)layoutScrollImages
{
	UIImageView *view = nil;
	NSArray *subviews = [self.scrollView subviews];
    
	// reposition all image subviews in a horizontal serial fashion
	CGFloat curXLoc = 0;
	for (view in subviews)
	{
		if ([view isKindOfClass:[UIImageView class]] && view.tag > 0)
		{
			CGRect frame = view.frame;
			frame.origin = CGPointMake(curXLoc, 0);
			view.frame = frame;
			
			curXLoc += (self.scrollView.frame.size.width);
		}
	}
	
	// set the content size so it can be scrollable
	[self.scrollView setContentSize:CGSizeMake((kNumImages * self.scrollView.frame.size.width), self.scrollView.bounds.size.height)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.scrollView setBackgroundColor:[UIColor blackColor]];
	[self.scrollView setCanCancelContentTouches:NO];
	self.scrollView.clipsToBounds = YES;		// default is NO, we want to restrict drawing within our scrollview
	self.scrollView.scrollEnabled = YES;
    self.scrollView.layer.cornerRadius = 5.0f;
    self.scrollView.center = self.view.center;
	
	// pagingEnabled property default is NO, if set the scroller will stop or snap at each photo
	// if you want free-flowing scroll, don't set this property.
	self.scrollView.pagingEnabled = YES;
	
	// load all the images from our bundle and add them to the scroll view
	for (int i = 1; i <= kNumImages; i++)
	{
		NSString *imageName = [NSString stringWithFormat:@"image%d.jpg", i];
		UIImage *image = [UIImage imageNamed:imageName];
		UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleToFill;

		
		// setup each frame to a default height and width, it will be properly placed when we call "updateScrollList"
//		CGRect rect = imageView.frame;
//		rect.size.height = self.scrollView.frame.size.height;
//		rect.size.width = self.scrollView.frame.size.width;
//		imageView.frame = rect;
        imageView.frame = self.scrollView.bounds;
		imageView.tag = i;	// tag our images for later use when we place them in serial fashion
		[self.scrollView addSubview:imageView];
	}
	
	[self layoutScrollImages];	// now place the photos in serial layout within the scrollview
    
    self.frameView.center = self.view.center;
    self.frameView.layer.cornerRadius = 5.0f;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
