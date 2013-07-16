#import "AppFloodPlugin.h"

@implementation AppFloodPlugin

// The plugin must call super dealloc.
- (void) dealloc {
	[super dealloc];
}

// The plugin must call super init.
- (id) init {
	self = [super init];
	if (!self) {
		return nil;
	}

	return self;
}

- (void) initializeWithManifest:(NSDictionary *)manifest appDelegate:(TeaLeafAppDelegate *)appDelegate {
	@try {
		NSDictionary *ios = [manifest valueForKey:@"ios"];
		NSString *appFloodAppKey = [ios valueForKey:@"appFloodAppKey"];
		NSString *appFloodSecretKey = [ios valueForKey:@"appFloodSecretKey"];
		
		NSLog(@"{appFlood} Initializing with manifest appFloodAppKey: '%@'", appFloodAppKey);

		[AppFlood initializeWithId:appFloodAppKey key:appFloodSecretKey adType:APPFLOOD_AD_ALL];
	}
	@catch (NSException *exception) {
		NSLog(@"{appFlood} Failure during startup: %@", exception);
	}
}

- (void) showInterstitial:(NSDictionary *)jsonObject {
	@try {
		[AppFlood showInterstitial];
	}
	@catch (NSException *exception) {
		NSLog(@"{appFlood} Failure during interstitial: %@", exception);
	}
}

@end
