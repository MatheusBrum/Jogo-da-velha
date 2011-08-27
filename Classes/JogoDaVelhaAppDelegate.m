//
//  JogoDaVelhaAppDelegate.m
//  JogoDaVelha
//
//  Created by Matheus Brum on 06/11/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "JogoDaVelhaAppDelegate.h"
#import "JogoDaVelhaViewController.h"

@implementation JogoDaVelhaAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
