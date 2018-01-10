//
//  MathChallange.h
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Challange.h"

@protocol MathChallange <NSObject>

@property (strong, nonatomic, readonly) NSString *challangeDescription;

- (Challange *)next;

@end


#define SWF(str, ...) [NSString stringWithFormat:str, ##__VA_ARGS__]

static inline const NSInteger randr(const NSInteger min, const NSInteger max) {
    return min + arc4random_uniform((uint32_t)(max - min + 1));
}
