//
//  UIApplication+CoreiOS.m
//  BaseProject
//
//  Created by Rafael Fernandez Alvarez on 24/11/15.
//  Copyright © 2015 SDOS. All rights reserved.
//

static const NSString *suffix_selector = @"SDOSFLEX_";

#import "UIApplication+SDOSFLEX.h"
#import <FLEX/FLEX.h>

@implementation UIApplication (SDOSFLEX)

#pragma mark - Flex

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(event.type == UIEventSubtypeMotionShake)
    {
		[FLEXManager sharedManager].networkDebuggingEnabled = YES;
        [[FLEXManager sharedManager] showExplorer];
    }
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

@end
