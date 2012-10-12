//
//  ViewController.m
//  Project-3
//
//  Created by Andrew Phillips on 10/10/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//


/*
 
 5) Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
 6) Call the Add function passing in two integer values. Capture the return of this function into a variable.
 7) Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
 8) Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
 9) Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
// 1-Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    
- (int)add:(int)num1 num2:(int)num2
    {
        return  num1 + num2;
    }// end 1

    
// 2-Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
- (BOOL)Compare:(NSInteger)nsVal1 nsVal2:(NSInteger)nsVal2
    {
        if (nsVal1 == nsVal2) {
            return YES;
        }
        else
        {
            return NO;
        }
    }// end 2

    
// 3-Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
- (NSString *)Append:(NSString *)strg1 strg2:(NSString *)strg2
    {
        NSMutableString *appdNewStrg = [[NSMutableString alloc] initWithString:strg1];
        [appdNewStrg appendString:strg2];
        return appdNewStrg;
    }// end 3


// 4-Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.

    NSString *funkyAlert = [self Append:@"Alerts are Funky! " strg2:@"You can't press Accept fast enough!"];
    [self DisplayAlertWithString:funkyAlert];
    

// 5-Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
    
- (void)DisplayAlertWithString:(NSString *)stringAlert
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert!" message:stringAlert delegate:nil cancelButtonTitle:@"Press Me!" otherButtonTitles:nil, nil];
        if (stringAlert != nil)
        {
            [stringAlert show];
        }
    }
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
