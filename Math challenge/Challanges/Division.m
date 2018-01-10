//
//  Division.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Division.h"

@implementation Division

- (Challange *)next {
    NSInteger firstNumb = randr(2, 20);
    NSInteger secondNumb = randr(2, 20);
    NSInteger numerator = firstNumb * secondNumb;
    
    NSInteger result, denominator;
    if (randr(0, 1) == 1) {
        result = firstNumb;
        denominator = secondNumb;
    } else {
        result = secondNumb;
        denominator = firstNumb;
    }
    
    return [[Challange alloc] initWithText:SWF(@"%ld / %ld", (long)numerator, (long)denominator) andAnswer:result];
}

- (NSString *)challangeDescription
{
    return @"Division (2-20)";
}

@end

