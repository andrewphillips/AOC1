//
//  ViewController.h
//  Project-3
//
//  Created by Andrew Phillips on 10/10/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

-(int)add:(int)num1 num2:(int)num2;
-(BOOL)Compare:(NSInteger)nsVal1 nsVal2:(NSInteger)nsVal2;
-(NSString*)Append:(NSString *)strg1 strg2:(NSString *)strg2;
-(void)DisplayAlertWithString:(NSString *)stringAlert;

@end
