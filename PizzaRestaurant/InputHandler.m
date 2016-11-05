//
//  InputHandler.m
//  PizzaRestaurant
//
//  Created by Suvan Ramani on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    return inputString;
}

@end
