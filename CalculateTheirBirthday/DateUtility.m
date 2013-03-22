//
//  DateUtility.m
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/19/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import "DateUtility.h"

@implementation DateUtility

+(NSDate *)nowAccordingToMyDevice{
        NSDate *nowGMT =[[NSDate alloc] init];
        NSTimeZone *sysTimeZone = [NSTimeZone systemTimeZone];
        NSInteger gmtOffset = [sysTimeZone secondsFromGMT];
        NSDate *now = [[NSDate alloc] initWithTimeInterval:gmtOffset sinceDate:nowGMT];
        NSLog(@"It is now %@",now);
        return now;
    
}

+(NSInteger)daysFromNow:(NSDate *)referenceDate{
    NSDate *now = [self nowAccordingToMyDevice];
    NSTimeInterval secondsDifference = [referenceDate timeIntervalSinceDate:now];
    NSLog(@"The difference between em is: %f", secondsDifference);
    NSInteger daysFromNow = (secondsDifference/86400);
    return daysFromNow;
}
@end
