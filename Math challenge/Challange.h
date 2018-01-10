//
//  Challange.h
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Challange : NSObject

@property (strong, nonatomic) NSString *challangeText;
@property (assign, nonatomic) NSInteger answer;

- (instancetype)initWithText:(NSString *)text andAnswer:(NSInteger)answer;
- (BOOL)evaluateAnswer:(NSInteger)answer;

@end
