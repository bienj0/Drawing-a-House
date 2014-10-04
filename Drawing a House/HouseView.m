//
//  HouseView.m
//  Drawing a House
//
//  Created by Robin van 't Slot on 01-10-14.
//  Copyright (c) 2014 BrickInc. All rights reserved.
//

#import "HouseView.h"

@implementation HouseView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    // Drawing code
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath closePath];
    [bezierPath stroke];
    
    UIBezierPath *roof = [UIBezierPath bezierPath];
    roof.lineWidth = 2.0;
    [roof moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [roof addLineToPoint:CGPointMake(3/6.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
    [roof addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [roof closePath];
    [roof stroke];
    [[UIColor redColor] setFill];
    [roof fill];
    
    UIBezierPath *chimney = [UIBezierPath bezierPath];
    chimney.lineWidth = 2.0;
    [chimney moveToPoint:CGPointMake(2/6.0 * self.bounds.size.width, 1/4.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(2/6.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
    [chimney addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 37/128.0 * self.bounds.size.height)];
    [chimney closePath];
    [chimney stroke];
    [[UIColor blackColor] setFill];
    [chimney fill];
    
    UIBezierPath *window = [UIBezierPath bezierPath];
    window.lineWidth = 2.0;
    [window moveToPoint:CGPointMake(5/8.0 * self.bounds.size.width, 3/8.0 * self.bounds.size.height)];
    [window addLineToPoint:CGPointMake(6/8.0 * self.bounds.size.width, 3/8.0 * self.bounds.size.height)];
    [window addLineToPoint:CGPointMake(6/8.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [window addLineToPoint:CGPointMake(5/8.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [window closePath];
    [window stroke];
    [[UIColor blueColor] setFill];
    [window fill];
    
    UIBezierPath *door = [UIBezierPath bezierPath];
    door.lineWidth = 2.0;
    [door moveToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [door addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [door addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 7/16.0 * self.bounds.size.height)];
    [door addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 7/16.0 * self.bounds.size.height)];
    [door closePath];
    [door stroke];
    [[UIColor brownColor] setFill];
    [door fill];
    
    NSLog(@"%f", self.bounds.size.height);
}

@end
