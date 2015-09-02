//
//  PrettyOverlay.m
//  OverlayWindowTest
//
//  Created by Nevyn Bengtsson on 2015-09-01.
//  Copyright © 2015 Lookback. All rights reserved.
//

#import "PrettyOverlay.h"

@implementation PrettyOverlay

- (id)commonInitializer
{
	if(!([super commonInitializer]))
		return nil;
	
	UIViewController *vc = [UIViewController new];
	UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
	v.backgroundColor = [UIColor greenColor];
	[vc.view addSubview:v];
	self.rootViewController = vc;
	
	return self;
}

@end
