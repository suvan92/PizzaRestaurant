//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        
        BOOL upgradeReceived = [self.delegate kitchenShouldUpgradeOrder:self];
        
        
        
        if (upgradeReceived) {
            
            Pizza *pizza = [[Pizza alloc] initWithSize:large andWithToppings:toppings];
            
            [self.delegate kitchenDidMakePizza:pizza];
            
            return pizza;
        } else {
            
            Pizza *pizza = [[Pizza alloc] initWithSize:size andWithToppings:toppings];
            
            [self.delegate kitchenDidMakePizza:pizza];
            
            return pizza;
            
        }
        
    }
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size andWithToppings:toppings];
    
    return pizza;
}

@end
