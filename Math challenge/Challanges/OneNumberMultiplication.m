//
//  OneNumberMultiplication.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "OneNumberMultiplication.h"

@implementation OneNumberMultiplication {
    NSInteger _number;
}

+ (instancetype)newWithNumber:(NSInteger)number
{
    return [[OneNumberMultiplication alloc] initWithNumber:number];
}

- (instancetype)initWithNumber:(NSInteger)numb
{
    if ((self = [super init])) {
        _number = numb;
        _challangeDescription = SWF(@"%lder Reihe", (long)numb);
    }
    
    return self;
}

- (Challange *)next
{
    NSInteger second = randr(1, 10);
    
    return [[Challange alloc] initWithText:SWF(@"%ld * %ld", (long)second, (long)_number) andAnswer:second * _number];
}

@synthesize challangeDescription = _challangeDescription;

@end
