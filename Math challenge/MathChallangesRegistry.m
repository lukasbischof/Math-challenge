//
//  MathChallangesRegistry.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "MathChallangesRegistry.h"
#import "OneNumberMultiplication.h"
#import "Multiplication.h"
#import "Division.h"
#import "Addition.h"
#import "Subtraction.h"
#import "SPHAIR.h"
#import "Squares.h"

@implementation MathChallangesRegistry

+ (NSArray<NSObject<MathChallange> *> *)registeredChallanges
{
    NSMutableArray *ret = [@[
       [SPHAIR new],
       [Squares new],
       [Multiplication new],
       [Division new]
    ] mutableCopy];
    
    for (unsigned short i = 2; i < 17; i++) {
        [ret addObject:[OneNumberMultiplication newWithNumber:(NSInteger)i]];
    }
    
    for (unsigned short i = 1; i < 5; i++) {
        [ret addObject:[Addition newWithLevel:(NSInteger)i]];
    }
    
    for (unsigned short i = 1; i < 5; i++) {
        [ret addObject:[Subtraction newWithLevel:(NSInteger)i]];
    }
    
    return ret;
}

@end
