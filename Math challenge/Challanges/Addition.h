//
//  Addition.h
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathChallange.h"

@interface Addition : NSObject <MathChallange>

+ (instancetype)newWithLevel:(NSInteger)level;

@end
