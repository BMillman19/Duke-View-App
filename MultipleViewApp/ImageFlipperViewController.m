//
//  ImageFlipperViewController.m
//  ImageFlipper2
//
//  Created by Michael on 10/7/12.
//  Modified by Brandon Millman on 10/21/12
//  Copyright (c) 2012 ECE. All rights reserved.
//

#import "ImageFlipperViewController.h"

@interface ImageFlipperViewController ()

@end

@implementation ImageFlipperViewController

@synthesize pageControl;
@synthesize imageView1, imageView2;


- (void)viewDidLoad
{
    //---initialize the first imageview to display an image---
    [imageView1 setImage:[UIImage imageNamed:@"image1.jpg"]];
    tempImageView = imageView2;
    
    //---make the first imageview visible and hide the second---
    [imageView1 setHidden:NO];
    [imageView2 setHidden:YES];
    
    //---add the event handler for the page control---
    [pageControl addTarget:self
                    action:@selector(pageTurning:)
          forControlEvents:UIControlEventValueChanged];
    
    prevPage = 0;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//---when the page control’s value is changed---
- (void) pageTurning: (UIPageControl *) pageController {
    //---get the page number you can turning to---
    NSInteger nextPage = [pageController currentPage];
    switch (nextPage) {
        case 0:
            [tempImageView setImage:
             [UIImage imageNamed:@"image1.jpg"]];
            break;
        case 1:
            [tempImageView setImage:
             [UIImage imageNamed:@"image2.jpg"]];
            break;
        case 2:
            [tempImageView setImage:
             [UIImage imageNamed:@"image3.jpg"]];
            break;
        case 3:
            [tempImageView setImage:
             [UIImage imageNamed:@"image4.jpg"]];
            break;
        case 4:
            [tempImageView setImage:
             [UIImage imageNamed:@"image5.jpg"]];
            break;
        default:
            break;
    }
    
    //---switch the two imageview views---
    if (tempImageView.tag == 0) { //---imageView1---
        tempImageView = imageView2;
        bgImageView = imageView1;
    }
    else {                        //---imageView2---
        tempImageView = imageView1;
        bgImageView = imageView2;
    }
    
    UIViewAnimationOptions transitionOption;
    if (nextPage > prevPage)
        transitionOption = UIViewAnimationOptionTransitionFlipFromLeft;
    else
        transitionOption = UIViewAnimationOptionTransitionFlipFromRight;
    
    [UIView transitionWithView:tempImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [tempImageView setHidden:YES];
                    }
                    completion:NULL];
    
    
    [UIView transitionWithView:bgImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [bgImageView setHidden:NO];
                    }
                    completion:NULL];
    
    prevPage = nextPage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
