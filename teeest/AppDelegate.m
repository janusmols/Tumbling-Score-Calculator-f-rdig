//
//  AppDelegate.m
//  teeest
//
//  Created by Janus Broch Mols on 08/11/14.
//  Copyright (c) 2014 Janus Broch Mols. All rights reserved.
//

#import "AppDelegate.h"
#import <Pushbots/Pushbots.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Pushbots getInstance];
    NSDictionary * userInfo = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
    if(userInfo) {
        // Notification Message
        NSString* notificationMsg = [userInfo valueForKey:@"message"];
        // Custom Field
        NSString* title = [userInfo valueForKey:@"title"];
        NSLog(@"Notification Msg is %@ and Custom field title = %@", notificationMsg , title);
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)onReceivePushNotification:(NSDictionary *) pushDict andPayload:(NSDictionary *)payload {
    [payload valueForKey:@"title"];
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"New Alert !" message:[pushDict valueForKey:@"alert"] delegate:self cancelButtonTitle:@"Thanks !" otherButtonTitles: @"Open",nil];
    [message show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Open"]) {
        [[Pushbots getInstance] OpenedNotification];
        // set Badge to 0
        [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
        // reset badge on the server
        [[Pushbots getInstance] resetBadgeCount];
    }
}

@end
