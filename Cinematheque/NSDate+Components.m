//
//  NSDate+Components.m
//  Cinémathèque
//
//  Created by Matthias Lamoureux on 08/11/2013.
//  Copyright (c) 2013 Serli. All rights reserved.
//

#import "NSDate+Components.h"

@implementation NSDate (Components)

- (NSDateComponents *) components {
    return [[NSCalendar currentCalendar] components:NSYearCalendarUnit fromDate:self];
}

- (NSInteger) year {
    return self.components.year;
}

- (NSInteger) month {
    return self.components.month;
}

- (NSInteger) day {
    return self.components.day;
}
@end
