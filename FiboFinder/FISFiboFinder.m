//
//  FiboFinder.m
//  FiboFinder
//
//  Created by Chris Gonzales on 6/2/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISFiboFinder.h"

@implementation FISFiboFinder

-(NSUInteger) fibonacciNumberAtIndex:(NSUInteger)index {
    NSMutableArray *fibonacci = [[NSMutableArray alloc] initWithObjects:@"0", @"1", nil];
    for (NSUInteger i=0; i<index; i++) {
        NSUInteger fibo1 = [fibonacci[i] integerValue];
        NSUInteger fibo2 = [fibonacci[i+1] integerValue];
        NSUInteger fiboStepper = (fibo1 + fibo2);
        NSString *newNumber = [[NSString alloc] initWithFormat:@"%lu", (unsigned long)fiboStepper];
        [fibonacci addObject:newNumber];
    }
    return [fibonacci[index] integerValue];
}

@end
