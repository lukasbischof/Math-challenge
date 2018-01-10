//
//  Multiplication.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

- (Challange *)next {
    NSInteger first = randr(2, 9);
    NSInteger second = randr(2, 9);
    
    return [[Challange alloc] initWithText:SWF(@"%ld * %ld", (long)first, (long)second) andAnswer:first * second];
}

- (NSString *)challangeDescription
{
    return @"Multiplikation (1-10)";
}

@end
