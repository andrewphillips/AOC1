//
//  ViewController.m
//  Project-2
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
    
    
    //All The Labels !
    //Top Book Label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 20)];
    if (title != nil) {
        title.text = @"Heir to the Empire";
        title.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        title.textAlignment = UITextAlignmentCenter;
        title.textColor = [UIColor brownColor];
    }
    
    //Author Labeling Label
    UILabel *authorLabelText = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 145, 20)];
    if (authorLabelText != nil) {
        authorLabelText.text = @"Author: ";
        authorLabelText.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        authorLabelText.textAlignment = UITextAlignmentRight;
        authorLabelText.textColor = [UIColor brownColor];
    }
    
    //Author Label
    UILabel *authorText = [[UILabel alloc] initWithFrame:CGRectMake(165, 40, 145, 20)];
    if (authorText != nil) {
        authorText.text = @"Timothy Zahn";
        authorText.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        authorText.textAlignment = UITextAlignmentLeft;
        authorText.textColor = [UIColor brownColor];
    }
    
    //Published labeling label
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 145, 20)];
    if (published != nil) {
        published.text = @"Published: ";
        published.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        published.textAlignment = UITextAlignmentRight;
        published.textColor = [UIColor brownColor];
    }
    
    //Published date label
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(165, 70, 145, 20)];
    if (publishedDate != nil) {
        publishedDate.text = @"June 1991";
        publishedDate.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        publishedDate.textAlignment = UITextAlignmentLeft;
        publishedDate.textColor = [UIColor brownColor];
    }
    
    //Summary labeling label
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 145, 20)];
    if (summaryLabel != nil) {
        summaryLabel.text = @"Summary: ";
        summaryLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        summaryLabel.textAlignment = UITextAlignmentLeft;
        summaryLabel.textColor = [UIColor brownColor];
    }
    
    
    //Plot summary
    UILabel *plotSummary = [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 300, 235)];
    if (plotSummary != nil) {
        plotSummary.text = @"Five years after Return of the Jedi, as the New Republic holds a fragile foothold in control of the galaxy, a new threat emerges. Having been posted so far away from action, Grand Admiral Thrawn, a cunning and intelligent Chiss commander, begins to gather his Imperial forces for a strategic attack on the New Republic. A sinister chain of events has begun major unrest in the New Republic.";
        plotSummary.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        plotSummary.textAlignment = UITextAlignmentLeft;
        plotSummary.textColor = [UIColor brownColor];
        plotSummary.numberOfLines = 15;
    }
    
    //Text label for listOfitems
    UILabel *listOfItemsText = [[UILabel alloc] initWithFrame:CGRectMake(10, 375, 145, 20)];
    if (listOfItemsText != nil) {
        listOfItemsText.text = @"List of Items:";
        listOfItemsText.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        listOfItemsText.textAlignment = UITextAlignmentLeft;
        listOfItemsText.textColor = [UIColor brownColor];
    }
    
    //Create NSArray for items list
    NSArray *heirArray = [[NSArray alloc] initWithObjects:@"Thrawn, ", @"Lando, ", @"Princess Leia, ", @"Jorus C'Baoth, ", @"Luke Skywalker.", nil];
    NSMutableString *heirString = [[NSMutableString alloc] init];
    for (int i=0; i < [heirArray count]; i++) {
        [heirString appendFormat:@"%@", heirArray[i]];
    }
    
    //Label for list of items
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(10, 405, 300, 40)];
    if (listOfItems != nil) {
        listOfItems.text = heirString;
        listOfItems.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; /*#ffffff*/
        listOfItems.textAlignment = UITextAlignmentCenter;
        listOfItems.textColor = [UIColor brownColor];
        listOfItems.numberOfLines = 6;
    }
    
    //call addSubView so you can see what you've created
    [self.view addSubview:(title)];
    [self.view addSubview:(authorLabelText)];
    [self.view addSubview:(authorText)];
    [self.view addSubview:(published)];
    [self.view addSubview:(publishedDate)];
    [self.view addSubview:(summaryLabel)];
    [self.view addSubview:(plotSummary)];
    [self.view addSubview:(listOfItemsText)];
    [self.view addSubview:(listOfItems)];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
