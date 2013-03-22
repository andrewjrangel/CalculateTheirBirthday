//
//  ViewController.h
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/14/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel* label;
-(IBAction)monthButtonPressed:(id)sender;
-(IBAction)dayButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *daysToBirthdayLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateSelected;
@property (strong, nonatomic) IBOutlet UILabel *happyBirthdayLabel;



@end
