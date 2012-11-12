//
//  ImageScrollerViewController.h
//  MultipleViewApp
//
//  Created by Brandon Millman on 11/12/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageScrollerViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet UIView *frameView;

@end
