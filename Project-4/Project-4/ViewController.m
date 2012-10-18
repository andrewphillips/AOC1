//
//  ViewController.m
//  Project-4
//
//  Created by Andrew Phillips on 10/18/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BUTTON 0
#define DATE_BUTTON 1
#define INFO_BUTTON 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor darkGrayColor];
    
/*****************Login Section ******************************************/
    //create UILabel near top of screen with text 'username'
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(13, 10, 93, 22)];
    if (usernameLabel != nil)
    {
        usernameLabel.backgroundColor = [UIColor lightGrayColor];
        usernameLabel.text = @"Username -> ";
    }
    [self.view addSubview:usernameLabel];
    
    //create textfield to the right of the username label
    usernameField = [[UITextField alloc] initWithFrame:CGRectMake(100, 12, 200, 30)];
    if (usernameField != nil)
    {
        usernameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameField];
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
