//
//  ImageFlipperViewController.h
//  ImageFlipper2
//
//  Created by Michael on 10/7/12.
//  Modified by Brandon Millman on 10/21/12
//  Copyright (c) 2012 ECE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageFlipperViewController : UIViewController
{
    IBOutlet UIImageView *imageView1;
    IBOutlet UIImageView *imageView2;
    IBOutlet UIPageControl *pageControl;
    UIImageView *tempImageView, *bgImageView;
    int prevPage;
}

@property (nonatomic) UIImageView *imageView1;
@property (nonatomic) UIImageView *imageView2;
@property (nonatomic) UIPageControl *pageControl;

@end
