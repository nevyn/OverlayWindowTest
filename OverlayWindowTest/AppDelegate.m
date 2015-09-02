#import "AppDelegate.h"
#import "PrettyOverlay.h"

@interface AppDelegate ()
{
	PrettyOverlay *_ov;
}
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	_ov = [[PrettyOverlay alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	// remove this line to make status bar appearance work again. Status bar color
	// should respect MasterViewController's wishes, not PrettyOverlay's.
	_ov.hidden = NO;
	
	return YES;
}
@end
