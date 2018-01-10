//
//  Challange.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "Challange.h"

@implementation Challange

- (instancetype)initWithText:(NSString *)text andAnswer:(NSInteger)answer
{
    if ((self = [super init])) {
        self.challangeText = text;
        self.answer = answer;
    }
    
    return self;
}

- (BOOL)evaluateAnswer:(NSInteger)answer
{
    return answer == self.answer;
}

@end
