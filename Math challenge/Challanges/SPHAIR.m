//
//  SPHAIR.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "SPHAIR.h"

@implementation SPHAIR

- (Challange *)next
{
    NSInteger result = randr(1, 100);
    NSInteger denominator = randr(2, 9);
    
    NSMutableArray *possibleNumeratorValues = [@[@2, @3, @4, @5, @6, @7, @8, @9] mutableCopy];
    NSUInteger len = possibleNumeratorValues.count;
    
    NSInteger x = result * denominator;
    BOOL hasChallange = NO;
    NSInteger numerator = 0;
    for (short i = 0; i < len; i++) {
        NSUInteger indx = randr(0, possibleNumeratorValues.count - 1);
        NSInteger randNumerator = [possibleNumeratorValues[indx] integerValue];
        double tempResult = (double)x / (double)randNumerator;
        
        if (tempResult == (double)floorf(tempResult) && randNumerator != denominator) {
            numerator = randNumerator;
            hasChallange = YES;
            break;
        } else {
            [possibleNumeratorValues removeObjectAtIndex:indx];
        }
    }
    
    if (hasChallange) {
        NSInteger multiplicator = x / numerator;
        return [[Challange alloc] initWithText:SWF(@"%ld/%ld * %ld", (long)numerator, (long)denominator, (long)multiplicator) andAnswer:result];
    } else {
        return [self next];
    }
}

- (NSString *)challangeDescription
{
    return @"SPHAIR";
}

@end
