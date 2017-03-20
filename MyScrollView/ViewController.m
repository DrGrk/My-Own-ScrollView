//
//  ViewController.m
//  MyScrollView
//
//  Created by David Guichon on 2017-03-20.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //set myScrollView content size
    self.myScrollView.bounds = self.view.bounds;
    [self.myScrollView addSubview:self.viewContainerView];
    CGFloat myScrollViewMaxY = CGRectGetMaxY(self.yellowBoxIsLowestUIVIEW.frame) + 50;
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, myScrollViewMaxY);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)myScrollViewGRPan:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self.myScrollView];
    
    CGFloat xMovement = translation.x;
    CGFloat yMovement = translation.y;
    
    [sender setTranslation:CGPointZero inView:self.myScrollView];
//    self.myScrollView.center = [sender locationInView:self.view];
    
    CGRect newBounds = CGRectOffset(self.myScrollView.bounds, -xMovement, -yMovement);
    //
    if (newBounds.origin.x + newBounds.size.width > self.myScrollView.contentSize.width) {
        newBounds.origin.x = self.myScrollView.contentSize.width - newBounds.size.width;
    }
    if (newBounds.origin.x < 0) {
        newBounds.origin.x = 0;
    }
    if (newBounds.origin.y + newBounds.size.height > self.myScrollView.contentSize.height) {
        newBounds.origin.y = self.myScrollView.contentSize.height - newBounds.size.height;
    }
    if (newBounds.origin.y < 0){
        newBounds.origin.y = 0;
    }
    
    self.myScrollView.bounds = newBounds;

}

@end
