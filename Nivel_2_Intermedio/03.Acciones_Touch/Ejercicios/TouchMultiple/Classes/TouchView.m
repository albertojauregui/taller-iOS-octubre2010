//
//  TouchView.m
//  TouchZoom
//
//  Created by Rene Cruz Flores on 22/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "TouchView.h"


@implementation TouchView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		[self setMultipleTouchEnabled:YES];
    }
	
    return self;
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event { 
	NSArray *allTouches = [touches allObjects]; 
	int count = [allTouches count]; 
	if (count > 0) 
		touch1 = [[allTouches objectAtIndex:0] locationInView:self]; 
	if (count > 1) 
		touch2 = [[allTouches objectAtIndex:1] locationInView:self]; 
	
	[self setNeedsDisplay]; 
} 


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	NSArray *allTouches = [touches allObjects]; 
	int count = [allTouches count]; 
	if (count > 0) 
		touch1 = [[allTouches objectAtIndex:0] locationInView:self]; 
	if (count > 1) 
		touch2 = [[allTouches objectAtIndex:1] locationInView:self]; 
	
	[self setNeedsDisplay]; 
	
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
}

- (void) drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext(); 
	CGContextClearRect(context, rect); 
	CGContextSetLineWidth(context, 3.0f);
	CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
	CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0); 	
	CGRect drawrect = CGRectMake(touch1.x, touch1.y, touch2.x - touch1.x, touch2.y - touch1.y);
	CGFloat radius = 10.0;	
	CGFloat minx = CGRectGetMinX(drawrect), midx = CGRectGetMidX(drawrect), maxx = CGRectGetMaxX(drawrect);
	CGFloat miny = CGRectGetMinY(drawrect), midy = CGRectGetMidY(drawrect), maxy = CGRectGetMaxY(drawrect);	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	CGContextClosePath(context);
	CGContextDrawPath(context, kCGPathFillStroke);
}



- (void)dealloc {
    [super dealloc];
}


@end
