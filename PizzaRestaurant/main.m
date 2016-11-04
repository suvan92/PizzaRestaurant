//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // separate inputString into array of strings --> commandWords
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // set pizzaSize string to the first element in the commandWords array
            NSString *pizzaSize = [commandWords objectAtIndex:0];
            
            // create a mutable copy called toppings
            NSMutableArray *toppings = [commandWords mutableCopy];
            
            // remove pizzaSize element from the toppings array leaving only the toppings intended for the pizza
            [toppings removeObjectAtIndex:0];
            
            // tell restaurant kitchen to make the pizza, pass in the class method to convert pizza size into the enum datatype
            // pass in toppings array as second parameter
            Pizza *myPizza = [restaurantKitchen makePizzaWithSize:[Pizza pizzaSizeStringToSize:pizzaSize] toppings:toppings];
            
        }

    }
    return 0;
}

