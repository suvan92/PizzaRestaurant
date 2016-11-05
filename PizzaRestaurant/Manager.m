//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    
    return YES;
    
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

@end
