//
//  Squares.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Squares.h"

@implementation Squares

- (Challange *)next
{
    NSInteger rand = randr(11, 20);
    return [[Challange alloc] initWithText:SWF(@"(%ld)^2", (long)rand) andAnswer:(rand * rand)];
}

- (NSString *)challangeDescription {
    return @"2er Potenzen";
}

@end
