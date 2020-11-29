#import "../include/SafariFind.h"

%hook BrowserRootViewController

- (void)viewDidAppear:(BOOL)flag {

	UIBarButtonItem *shareItem = [[[self bottomToolbar] barRegistration] valueForKey:@"_shareItem"];
	UILongPressGestureRecognizer *safariFindGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(safarifind_openFinder)];
	[[shareItem valueForKey:@"_view"] addGestureRecognizer:safariFindGestureRecognizer];

	%orig;

}

%new
- (void)safarifind_openFinder {

	[[self delegate] findKeyPressed];

}

%end