//
//  Subtraction.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Subtraction.h"

@implementation Subtraction {
    NSInteger _level;
}

+ (instancetype)newWithLevel:(NSInteger)level
{
    return [[Subtraction alloc] initWithLevel:level];
}

- (instancetype)initWithLevel:(NSInteger)level
{
    if ((self = [super init])) {
        _level = level;
    }
    
    return self;
}

- (Challange *)next {
    NSInteger lowerBound = (NSInteger)powf(10.f, (float)_level);
    NSInteger upperBound = (NSInteger)powf(10.f, (float)(_level + 1)) - 1;
    
    NSInteger firstTmp = randr(lowerBound, upperBound);
    NSInteger secondTmp = randr(lowerBound, upperBound);
    
    NSInteger first = MAX(firstTmp, secondTmp);
    NSInteger second = MIN(firstTmp, secondTmp);
    
    return [[Challange alloc] initWithText:SWF(@"%ld - %ld", (long)first, (long)second) andAnswer:first - second];
}

- (NSString *)challangeDescription
{
    return SWF(@"Subtraktion level %ld", (long)_level);
}

@end
