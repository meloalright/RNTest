#import "ReactViewController.h"
#import <React-RCTAppDelegate/RCTRootViewFactory.h>
#import <React-RCTAppDelegate/RCTAppDelegate.h>

@interface ReactViewController ()

@end

@implementation ReactViewController

 - (void)viewDidLoad {
   [super viewDidLoad];
   // Do any additional setup after loading the view.
   RCTRootViewFactory *factory = ((RCTAppDelegate *)RCTSharedApplication().delegate).rootViewFactory;
   self.view = [factory viewWithModuleName:@"HelloWorld"];
 }

@end
