//
//  MathChallange.h
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameplayKit/GKRandomSource.h>
#import "Challange.h"

@protocol MathChallange <NSObject>

@property (strong, nonatomic, readonly) NSString *challangeDescription;

- (Challange *)next;

@end

#define SWF(str, ...) [NSString stringWithFormat:str, ##__VA_ARGS__]

static inline const NSInteger randr(const NSInteger min, const NSInteger max) {
    static GKMersenneTwisterRandomSource *source;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        source = [GKMersenneTwisterRandomSource new];
    });
    
    return min + [source nextIntWithUpperBound:(max - min + 1)];
}
