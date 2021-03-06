//  Created by Sean Heber on 1/13/11.
#import "ChameleonAppDelegate.h"
#import "TestViewController.h"


@implementation ChameleonAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    window.backgroundColor = [UIColor whiteColor];
    window.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [[UINavigationBar appearance] setTintColor:[UIColor darkGrayColor]];
    TestViewController *controller = [[TestViewController alloc] initWithNibName:nil bundle:nil];
    controller.title = @"Initial Title";
    
    navController = [[UINavigationController alloc] initWithRootViewController:controller];
    navController.view.frame = window.bounds;
    navController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    navController.view.autoresizesSubviews = YES;
    
    [window addSubview:navController.view];
    
    [window makeKeyAndVisible];
}

@end
