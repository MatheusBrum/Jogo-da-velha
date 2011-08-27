//
//  JogoDaVelhaAppDelegate.h
//  JogoDaVelha
//
//  Created by Matheus Brum on 06/11/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JogoDaVelhaViewController;

@interface JogoDaVelhaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    JogoDaVelhaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet JogoDaVelhaViewController *viewController;

@end

