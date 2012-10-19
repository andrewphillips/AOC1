//
//  ViewController.m
//  Project-4
//
//  Created by Andrew Phillips on 10/18/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BTN 0
#define DATE_BTN 1
#define INFO_BTN 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
/*****************Login Section ******************************************/
    //create UILabel near top of screen with text 'username'
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 12, 90, 20)];
    if (usernameLabel != nil)
    {
        usernameLabel.backgroundColor = [UIColor lightGrayColor];
        usernameLabel.text = @"Username:";
    }
    [self.view addSubview:usernameLabel];
    
    //create textfield to the right of the username label
    usernameField = [[UITextField alloc] initWithFrame:CGRectMake(105, 8, 205, 30)];
    if (usernameField != nil)
    {
        usernameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameField];
    }
    
    //create rounded rect button Login
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.tag = LOGIN_BTN;
        loginButton.frame = CGRectMake(220, 55, 90, 30);
        loginButton.tintColor = [UIColor greenColor];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:loginButton];
    }
    
    
    //create UILabel with text 'please enter username'
    usernameEntr =[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 300, 75)];
    if (usernameEntr != nil)
    {
        usernameEntr.text =@"Please Enter Username";
        usernameEntr.frame = CGRectMake(0, 100, 320, 70);
        usernameEntr.textColor = [UIColor blueColor];
        usernameEntr.backgroundColor = [UIColor grayColor];
        usernameEntr.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:usernameEntr];
    }
    
    
    //create 'show date' button!
    showTheDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showTheDate != nil)
    {
        showTheDate.tag = DATE_BTN;
        showTheDate.frame = CGRectMake(10, 250, 110, 40);
        showTheDate.tintColor = [UIColor grayColor];
        [showTheDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showTheDate addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showTheDate];
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
