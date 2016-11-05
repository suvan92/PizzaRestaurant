//
//  CoManager.m
//  PizzaRestaurant
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CoManager.h"

@implementation CoManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return YES;
}


-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    return YES;
}


-(void)kitchenDidMakePizza:(Pizza *)pizza {
    
    NSLog(@"Thank you for coming to our pizzeria!");
}

@end
