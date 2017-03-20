//
//  ViewController.h
//  MyScrollView
//
//  Created by David Guichon on 2017-03-20.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *parentViewSetToConstraints;

@property (strong, nonatomic) IBOutlet MyScrollView *myScrollView;


@property (strong, nonatomic) IBOutlet UIView *redBox;

@property (strong, nonatomic) IBOutlet UIView *greenBox;

@property (strong, nonatomic) IBOutlet UIView *blueBox;

@property (strong, nonatomic) IBOutlet UIView *yellowBoxIsLowestUIVIEW;

- (IBAction)myScrollViewGRPan:(UIPanGestureRecognizer *)sender;

@property (strong, nonatomic) IBOutlet UIView *viewContainerView;

@end

