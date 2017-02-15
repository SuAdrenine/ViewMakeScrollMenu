//
//  XBYIndicatorView.m
//
//  Created by xby on 17/1/24.
//  Copyright © 2017年 xby. All rights reserved.
//

#import "XBYIndicatorView.h"

@implementation XBYIndicatorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

static UIColor *_indicatorColor;

+ (UIColor *)indicatorColor
{
    return _indicatorColor;
}

+ (void)setIndicatorColor:(UIColor *)indicatorColor
{
    _indicatorColor = indicatorColor;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(context);
    CGContextMoveToPoint   (context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    CGContextAddLineToPoint(context, CGRectGetMidX(rect), CGRectGetMinY(rect));
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    CGContextClosePath(context);
    
    CGContextSetFillColorWithColor(context, [[[self class] indicatorColor] CGColor]);
    CGContextFillPath(context);
}


@end
