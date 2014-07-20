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
        
        char str [100];
        
        NSString *command = nil;
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            scanf("%100s", str);
            // Need to convert input to a NSString
            command = [[NSString alloc] initWithUTF8String: str];
            NSLog(@"%@", command);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [command componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

