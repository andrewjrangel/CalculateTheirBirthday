//
//  AppDelegate.h
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/14/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end

NSString* g_selectedday;
NSString* g_selectedmonth;
