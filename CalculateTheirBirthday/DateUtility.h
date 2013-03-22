//
//  DateUtility.h
//  CalculateTheirBirthday
//
//  Created by Ventura Rangel on 3/19/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateUtility : NSObject

+(NSDate *)nowAccordingToMyDevice;
+(NSInteger)daysFromNow: (NSDate *)referenceDate;

@end
