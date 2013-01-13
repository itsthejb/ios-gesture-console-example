//
//  JCAppDelegate.m
//  console
//
//  Created by Jonathan Crooke on 13/01/2013.
//  Copyright (c) 2013 jc. All rights reserved.
//

#import "JCAppDelegate.h"
#import "JCConsoleViewController.h"

@interface JCAppDelegate ()
- (void) showConsole:(id)sender;
@end

@implementation JCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#ifdef DEBUG
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(showConsole:)];
    recognizer.numberOfTapsRequired = 2;
    [self.window addGestureRecognizer:recognizer];
#endif
    
    // Override point for customization after application launch.
    return YES;
}

- (void)showConsole:(id)sender {
    UIStoryboard *board = self.window.rootViewController.storyboard;
    UIViewController *console = [board instantiateViewControllerWithIdentifier:@"JCConsoleViewController"];    
    [self.window.rootViewController presentViewController:console
                                                 animated:YES
                                               completion:nil];
}
							


@end
