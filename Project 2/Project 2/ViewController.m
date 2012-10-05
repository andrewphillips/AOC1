//
//  ViewController.m
//  Project 2
//
//  Created by Andrew Phillips on 10/4/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Change background color to a dark blue like the actual book cover
    self.view.backgroundColor = [UIColor colorWithRed:0.192 green:0.227 blue:0.353 alpha:1]; /*#313a5a*/
    
}

- (void)viewWillAppear:(BOOL)animated {
    //All The Labels !
    //Top Book Label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 250, 30)];
    if (title != nil) {
        title.text = @"Heir to the Empire";
        title.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        title.textAlignment = UITextAlignmentCenter;
        title.textColor = [UIColor brownColor];
    }
    
    //Author Labeling Label
    UILabel *authorText = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (authorText != nil) {
        authorText.text = @"Timothy Zahn";
        authorText.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        authorText.textAlignment = UITextAlignmentLeft;
        authorText.textColor = [UIColor brownColor];
    }
    
    //Published labeling label
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (published != nil) {
        published.text = @"Published: ";
        published.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        published.textAlignment = UITextAlignmentLeft;
        published.textColor = [UIColor brownColor];
    }
    
    //Published date label
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (publishedDate != nil) {
        publishedDate.text = @"June 1991";
        publishedDate.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        publishedDate.textAlignment = UITextAlignmentRight;
        publishedDate.textColor = [UIColor brownColor];
    }
    
    //Summary labeling label
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (summaryLabel != nil) {
        summaryLabel.text = @"Summary: ";
        summaryLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        summaryLabel.textAlignment = UITextAlignmentLeft;
        summaryLabel.textColor = [UIColor brownColor];
    }
    
  
    //Plot summary
    UILabel *plotSummary = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (plotSummary != nil) {
        plotSummary.text = @"5 years after Return of the Jedi, as the New Republic holds a fragile foothold in control of the galaxy, a new threat emerges. Having been posted so far away from action, Grand Admiral Thrawn, a cunning and intelligent Chiss commander, begins to gather his Imperial forces for a strategic attack on the New Republic. With the aid of Captain Gilad Pellaeon and Thrawn's personal bodyguard Rukh, they begin to set in motion an almost unbeatable plan. They enlist the aid of a mad clone of a dead Jedi Master and use the Emperor's hidden weapons vault on the planet Wayland, which the clone guards. The chain of events caused major unrest in the New Republic.";
        plotSummary.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        plotSummary.textAlignment = UITextAlignmentRight;
        plotSummary.textColor = [UIColor brownColor];
        plotSummary.numberOfLines = 12;
    }

    //Text label for listOfitems
    UILabel *listOfItemsText = [[UILabel alloc] initWithFrame:CGRectMake(10, 405, 320, 45)];
    if (listOfItemsText != nil) {
        listOfItemsText.text = @"List of Items:";
        listOfItemsText.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        listOfItemsText.textAlignment = UITextAlignmentCenter;
        listOfItemsText.textColor = [UIColor brownColor];
    }
    
    //Create NSArray for items list
    NSArray *heirArray = [[NSArray alloc] initWithObjects:@"Thrawn", @"Lando", @"Princess Leia", @"Jorus C'Baoth", @"Luke Skywalker", nil];
    NSMutableString *heirString = [[NSMutableString alloc] init];
    for (int i=0; i < [heirArray count]; i++) {
        [heirString appendFormat:@"%@", heirArray[i]];
    }
    
    //Label for list of items
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (listOfItems != nil) {
        listOfItems.text = heirString;
        listOfItems.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        listOfItems.textAlignment = UITextAlignmentCenter;
        listOfItems.textColor = [UIColor brownColor];
        listOfItems.numberOfLines = 6;
    }
    
    //call addSubView so you can see what you've created
    [self.view addSubview:(title)];
    [self.view addSubview:(authorText)];
    [self.view addSubview:(published)];
    [self.view addSubview:(publishedDate)];
    [self.view addSubview:(summaryLabel)];
    [self.view addSubview:(plotSummary)];
    [self.view addSubview:(listOfItemsText)];
    [self.view addSubview:(listOfItems)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
