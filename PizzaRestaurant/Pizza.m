//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


-(instancetype)initWithSize:(PizzaSize)size andWithToppings:(NSArray *)toppings {
    self = [super init];
    
    if (self) {
        
        _size = size;
        _toppings = toppings;
        
    }
    
    return self;
}


+(PizzaSize)pizzaSizeStringToSize:(NSString *)sizeString {
    
    sizeString = [sizeString lowercaseString];
    
    if ([sizeString isEqualToString:@"small"]) {
        return small;
        
    } else if ([sizeString isEqualToString:@"medium"]) {
        return medium;
        
    } else if ([[sizeString lowercaseString] isEqualToString:@"large"]) {
        return large;
    } else {
        return medium;
    }
}

@end
