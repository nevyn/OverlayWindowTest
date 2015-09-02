#import "GFStatusLevelWindow.h"

@implementation GFStatusLevelWindow

- (id)commonInitializer
{
	self.backgroundColor = [UIColor clearColor];
	self.userInteractionEnabled = NO;
	self.windowLevel = UIWindowLevelStatusBar;
	
	return self;
}

- (id)initWithFrame:(CGRect)frame
{
	return [[super initWithFrame:frame] commonInitializer];
}

- (id)initWithCoder:(NSCoder *)decoder
{
	return [[super initWithCoder:decoder] commonInitializer];
}

#pragma mark - Overrides

- (BOOL)canBecomeFirstResponder
{
    return NO;
}

- (BOOL)becomeFirstResponder
{
	return NO;
}

- (void)becomeKeyWindow
{
	//nop
}

- (void)makeKeyWindow
{
	//nop
}

- (void)makeKeyAndVisible
{
	//nop
}
@end
