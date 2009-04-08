//
//  HelloNewBambooAppDelegate.m
//  HelloNewBamboo
//
//  Created by Olly on 06/04/2009.
//  Copyright New Bamboo 2009. All rights reserved.
//

#import "HelloNewBambooAppDelegate.h"

@implementation HelloNewBambooAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
