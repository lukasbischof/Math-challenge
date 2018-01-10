//
//  Addition.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Addition.h"

@implementation Addition {
    NSInteger _level;
}

+ (instancetype)newWithLevel:(NSInteger)level
{
    return [[Addition alloc] initWithLevel:level];
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
    
    NSInteger first = randr(lowerBound, upperBound);
    NSInteger second = randr(lowerBound, upperBound);
    
    return [[Challange alloc] initWithText:SWF(@"%ld + %ld", (long)first, (long)second) andAnswer:first + second];
}

- (NSString *)challangeDescription
{
    return SWF(@"Addition level %ld", (long)_level);
}

@end
