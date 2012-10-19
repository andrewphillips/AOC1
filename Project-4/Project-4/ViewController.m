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
    
/******************************************** UI Essentials Below ******************************************/
    
    //create UILabel near top of screen with text 'username'
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 12, 90, 20)];
    if (usernameLabel != nil)
    {
        usernameLabel.backgroundColor = [UIColor lightGrayColor];
        usernameLabel.text = @"Username:";
    }
    [self.view addSubview:usernameLabel];
    
    //create textfield to the right of the username label -captures user input
    usernameField = [[UITextField alloc] initWithFrame:CGRectMake(105, 8, 205, 30)];
    if (usernameField != nil)
    {
        usernameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:usernameField];
        [self resignFirstResponder]; //not sure if this works -  method to closing the keyboard
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
        [showTheDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showTheDate];
    }
    
    //create the info button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.tag = INFO_BTN;
        infoButton.frame = CGRectMake(10, 360, 30, 30);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    //create empty label beneath infoButton
    infobtnLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 400, 300, 40)];
    if (infobtnLabel != nil)
    {
        infobtnLabel.textColor = [UIColor whiteColor];
        infobtnLabel.backgroundColor = [UIColor darkGrayColor];
        infobtnLabel.textAlignment = NSTextAlignmentLeft;
        infobtnLabel.numberOfLines = 2;
        [self.view addSubview:infobtnLabel];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


/******************************************* Call the buttons to action below ! ************************************/
-(void)onClick:(UIButton *)button
{
    switch (button.tag) {
        case LOGIN_BTN:
        {
                      
            //checks length of text input; displays login info on success; if there is none, display an error message
            if (usernameField.text.length == 0)
            {
                usernameEntr.text =@"Username cannot be empty";
            } else {
                NSString *fieldText = [usernameField text];
                usernameEntr.text = [NSString stringWithFormat:@"User: %@ has logged in.", fieldText];
            }
        }
            break;
        case DATE_BTN:
        {
            //use NSDate, etc to auto format the date and display with alertView
            NSDate *dateView = [NSDate date];
            NSDateFormatter *dateFormating = [[NSDateFormatter alloc] init];
            if (dateFormating !=nil)
            {
                [dateFormating setDateFormat:@"MMM dd, yyyy hh:mm:ss aaa zzzz"];
                //create new NSString object w/ the now formatted date!
                NSString *dateString = [dateFormating stringFromDate:dateView];
                UIAlertView *dateView = [[UIAlertView alloc] initWithTitle:@"Current Date" message:dateString delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
                
                //verify that the dateView has been formatted/created properly
                if (dateView != nil)
                {
                    [dateView show];
                }
            }
        }
            break;
        case INFO_BTN:
        {
            //setup the infobtnLabel text view
            infobtnLabel.text = @"This application was created by: Andrew Phillips";
            infobtnLabel.textColor = [UIColor greenColor];
            infobtnLabel.numberOfLines = 2;
        }
            break;
            
        default:
        {
            //error alertView object for default
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Warning: " message:@"Unexpected Error" delegate:nil cancelButtonTitle:@"Yes" otherButtonTitles:nil, nil];

            //verify that this was created correctly
            if (errorAlert != nil)
            {
                [errorAlert show];
            }
        }
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
