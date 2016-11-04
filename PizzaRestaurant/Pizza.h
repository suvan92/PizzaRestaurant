//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,PizzaSize){
    small,
    medium,
    large
};
                
@interface Pizza : NSObject

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize size;

-(instancetype)initWithSize:(PizzaSize)size andWithToppings:(NSArray *)toppings;
+(PizzaSize)pizzaSizeStringToSize:(NSString *)sizeString;

@end
