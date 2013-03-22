//
//  ViewController.m
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/14/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import "ViewController.h"
#import "MonthViewController.h"
#import "DayViewController.h"
#import "AppDelegate.h"
#import "DateUtility.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(void) viewDidAppear:(BOOL)animated
{
    if(g_selectedday != Nil && g_selectedmonth != Nil)
        
    {
    NSString *dateString = [NSString stringWithFormat:@"%@/%@/2013", g_selectedmonth, g_selectedday];
    [self.dateSelected setText:[NSString stringWithFormat:@"%@ %@", g_selectedmonth, g_selectedday]];

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"MM/dd/yyyy"];
    NSDate *berfDateThisYear = [formatter dateFromString:dateString];
    NSString *happyBirthday = @"Happy Birthday!!";

        
    NSInteger daysTilMaBerfday = [DateUtility daysFromNow:berfDateThisYear];
        
    //NSDate *now = [NSDate date];
    //NSLog(@"It is now: %@", now);
    NSTimeInterval timeInt = [[NSDate date] timeIntervalSinceDate:berfDateThisYear];
    NSLog (@"reference date was %.0f seconds ago", timeInt);
    NSTimeInterval dayInt = (timeInt - 18000);
    NSTimeInterval timeZoneInt = (dayInt/86400);
    NSLog(@"reference date was %.0f days ago", timeZoneInt);
        if (daysTilMaBerfday > -1 && daysTilMaBerfday < 1) {
            [self.happyBirthdayLabel setText:[NSString stringWithFormat:@"%@", happyBirthday]];
            [self.daysToBirthdayLabel setHidden:YES];
            [self.happyBirthdayLabel setHidden:NO];
        } else if(daysTilMaBerfday < 0){
            NSTimeInterval absoluteInt = (sqrt(daysTilMaBerfday * daysTilMaBerfday));
            NSLog(@"the absolute days are %.0f", absoluteInt);
            NSTimeInterval yearInt = (365 - absoluteInt);
            NSLog(@"It will be %.0f days untill your birthday", yearInt);
            [self.daysToBirthdayLabel setText:[NSString stringWithFormat:@"%.0f", yearInt]];
            [self.happyBirthdayLabel setHidden:YES];
            [self.daysToBirthdayLabel setHidden:NO];

        } else if (daysTilMaBerfday > 0){
            NSTimeInterval absoluteInt = (sqrt(daysTilMaBerfday * daysTilMaBerfday));
            NSLog(@"the absolute days are %.0f", absoluteInt);
            NSTimeInterval yearInt = absoluteInt;
            NSLog(@"It will be %.0f days untill your birthday", yearInt);
            [self.daysToBirthdayLabel setText:[NSString stringWithFormat:@"%.0f", yearInt]];
            [self.happyBirthdayLabel setHidden:YES];
            [self.daysToBirthdayLabel setHidden:NO];



        }
    
}
}


-(IBAction)monthButtonPressed:(id)sender
{
    MonthViewController* view;
    view = [MonthViewController alloc];
    [self presentViewController:view animated:YES completion:Nil];
}

-(IBAction)dayButtonPressed:(id)sender
{
    DayViewController* view;
    view = [DayViewController alloc];
    [self presentViewController:view animated:YES completion:Nil];
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
