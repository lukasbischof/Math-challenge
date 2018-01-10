//
//  DetailViewController.h
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathChallange.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSObject<MathChallange> *challange;

@end

