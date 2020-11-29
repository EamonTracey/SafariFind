@interface BrowserController
- (void)findKeyPressed;
@end

@interface SFBarRegistration: NSObject
@end

@interface BrowserToolbar: UIToolbar
@property SFBarRegistration *barRegistration;
@end

@interface BrowserRootViewController: UIViewController
@property BrowserController *delegate;
@property BrowserToolbar *bottomToolbar;
@end