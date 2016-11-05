//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "InputHandler.h"
#import "Manager.h"
#import "CoManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        Manager *manager = [[Manager alloc] init];
        
        CoManager *coManager = [[CoManager alloc] init];
        
        while (TRUE) {
            // Loop forever
            
            
            NSString *orderString = [inputHandler inputForPrompt:@"Please pick your pizza size and toppings:\n> "];
            
            NSLog(@"Input was %@", orderString);
            
            NSString *managerSelection = [inputHandler inputForPrompt:@"\nPlease enter 'main' for the main manager, 'assistant' for the assistant manager or none for no manager\n> "];
            
            if ([[managerSelection lowercaseString] isEqualToString:@"main"]) {
                restaurantKitchen.delegate = manager;
                
                NSLog(@"Delegate set to manager");
            } else if ([[managerSelection lowercaseString] isEqualToString:@"assistant"]) {
                restaurantKitchen.delegate = coManager;
                
                NSLog(@"Delegate set to comanager");
            }
            
            // separate inputString into array of strings --> commandWords
            NSArray *commandWords = [orderString componentsSeparatedByString:@" "];
            
            // set pizzaSize string to the first element in the commandWords array
            NSString *pizzaSize = [commandWords objectAtIndex:0];
            
            // create a mutable copy called toppings
            NSMutableArray *toppings = [commandWords mutableCopy];
            
            // remove pizzaSize element from the toppings array leaving only the toppings intended for the pizza
            [toppings removeObjectAtIndex:0];
            
            // tell restaurant kitchen to make the pizza, pass in the class method to convert pizza size into the enum datatype
            // pass in toppings array as second parameter
            Pizza *myPizza = [restaurantKitchen makePizzaWithSize:[Pizza pizzaSizeStringToSize:pizzaSize] toppings:toppings];
            
            NSLog(@"%@", myPizza);
            
        }

    }
    return 0;
}

