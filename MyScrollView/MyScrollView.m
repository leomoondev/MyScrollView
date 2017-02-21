//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Hyung Jip Moon on 2017-02-20.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()
@property (nonatomic, assign) CGPoint locationY;
@end
@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleEvents:)];
        [self addGestureRecognizer:panGestureRecognizer];
        
    }
    return self;
}

- (void)handleEvents:(UIPanGestureRecognizer *)sender {
    
    CGPoint translation = [sender translationInView:self];
    
    CGFloat y = translation.y - self.locationY.y;
    
    if (self.frame.origin.y + y >= [[UIScreen mainScreen] bounds].size.height - self.frame.size.height && self.frame.origin.y + y <= 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + y, self.frame.size.width, 1000);
    }
    
    self.locationY = translation;
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        // Do Nothing
    }
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        self.locationY = CGPointMake(0, 0);
    }

}



@end
