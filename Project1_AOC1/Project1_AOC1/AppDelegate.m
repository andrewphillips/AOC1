//
//  AppDelegate.m
//  Project1_AOC1
//
//  Created by Andrew Phillips on 9/27/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
/*
   Create a variable using the float data type. Cast the float to an
   int and using NSLog, output both the initial float value as well as
   the int value.
   3. Perform an AND, OR comparison. Use float, int and BOOL types.
   BOOL values should be YES or NO and written in all caps.
   4. Use an if, else if and else check using any of the data types of
   your choice.
   5. Perform a single for loop printing out values to the console
   6. Perform a nested loop printing out values to the console
   7. Perform a while loop that increments an int variable and outputs
   to the console.
*/
    
    //Variables
    int bootPair = 2;
    int singleBoot = 1;
    int bootCloset = 20;
    BOOL hasBootOnFoot = YES;
    BOOL nearByShoe = NO;
    BOOL willFindBoot = YES;
    float chanceToHitBug = 20.1f;
    float roachesIncrease = 10.5f;
    //end variables
    
    // Start of my Story
    NSLog(@"I was sitting in my room on a summer afternoon, and I was reading a book.  I noticed something crawling up the wall out of the corner of my eye, so I turned to look.  It was a cockroach!  I was feeling lazy, so I decided to throw my nearby shoe at it.  I hit the wall right beside the roach, and he kept on climbing.  So I looked elsewhere for something to throw.");

    NSLog(@"Oh no... it's not just one roach!  There's got to be more than %d on the wall!", bootCloset);
    
    //casting float to an int w/ NSLog
    NSLog(@"I remember there being about %.0f boots in the closet", (float)bootCloset);
    
    NSLog(@"Since I don't have %d shoe on my foot, I need to get to the closet and check to see if the shoes are there!", singleBoot);
    
    
    
    //single for loop
    for (int i = 0; i < bootCloset; i++) {
        if (bootPair * singleBoot >= 5) {
            NSLog(@"It looks like there's %d shoes in here", i);
        }
        else {
            NSLog(@"%d shoes aren't enough for the encroching roach forces", i);
        }
    }
    
    NSLog(@"Oh! There are some shoes in the next room; I had forgotten.");
    
    //And/Or comparison - int, BOOL, and float
    if ((bootCloset > 20) && (willFindBoot == YES)) {
        NSLog(@"There are too many shoes; more than enough ammo!");
    }
    else if ((bootCloset == 20) || (chanceToHitBug != 1)) {
        NSLog(@"Definitly too many shoes now.  I can't wait to destroy all the roaches.");
    }
    else {
        NSLog(@"Dangit! Not enough shoes for all these dang bugs!");
    }
    
    //nested loop!
    if (willFindBoot == YES) {
        for (int r = 2; r > 1; r--) {
            NSLog(@"Now that I've got my ammo, it's time to wipe these bugs off the planet!");
        }
    } else {
        NSLog(@"Wow.... where did the new roaches come from!  Now there's too many, and I don't have enough shoes");
    }
    
    //while loop!
    while (chanceToHitBug >= 10) {
        NSLog(@"With all these shoes, I was able to kill %d roaches from afar.  Huzzah!", (int)chanceToHitBug);
        chanceToHitBug--;
    }
    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
