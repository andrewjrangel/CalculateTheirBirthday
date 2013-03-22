//
//  DayViewController.m
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/14/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import "DayViewController.h"
#import "AppDelegate.h"

@interface DayViewController ()

@end

@implementation DayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [self makeDay];

}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* tableCell = @"SimpleTableCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:tableCell];
    if(cell == Nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableCell];
    }
    cell.textLabel.text = [dayArray objectAtIndex:indexPath.row];
    
    return cell;
    
}



-(void)makeDay
    {
        dayArray = [NSMutableArray arrayWithObjects: nil];
        NSString *dayNumber;
        for(int i=0; i<=31; i++)
        {
            if(i==0) continue;
            dayNumber = [NSString stringWithFormat: @"%d", i];
            [dayArray addObject: dayNumber];
        }
    }



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dayArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    g_selectedday = [dayArray objectAtIndex:indexPath.row];
    [self dismissViewControllerAnimated:YES completion:nil];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
