//
//  AppDelegate.m
//  CPUDemo
//
//  Created by dev-aozhimin on 2018/2/23.
//  Copyright © 2018年 dev-aozhimin. All rights reserved.
//

#import "AppDelegate.h"

extern int freqTest(int cycles);

static double GetCPUFrequency(void)
{
    volatile NSTimeInterval times[500];
    
    int sum = 0;
    
    for(int i = 0; i < 500; i++)
    {
        times[i] = [[NSProcessInfo processInfo] systemUptime];
        sum += freqTest(10000);
        times[i] = [[NSProcessInfo processInfo] systemUptime] - times[i];
    }
    
    NSTimeInterval time = times[0];
    for(int i = 1; i < 500; i++)
    {
        if(time > times[i])
            time = times[i];
    }
    
    double freq = 1300000.0 / time;
    return freq;
}

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"the cpu frequency is %f HZ", GetCPUFrequency());
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
