//
//  LATypingDemoViewController.m
//
//
//  Created by Xiaodan Wang on 1/9/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

#import "TypingDemoViewController.h"

@interface TypingDemoViewController () <UITextFieldDelegate>

@end

@implementation TypingDemoViewController {
    UITextField *typingField_;
}

- (void)shakeIt {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath: @"position"];
    animation.duration = 0.07;
    animation.repeatCount = 4;
    animation.autoreverses = YES;
    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(textField_.center.x - 10, textField_.center.y)];
    
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(textField_.center.x + 10, textField_.center.y)];
    
    [textField_.layer addAnimation:animation forKey:@"position"];
}

@end

