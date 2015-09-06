//
//  HCDCalculateProtecal.h
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol HCDCalculate <NSObject>

@property(nonatomic)CGFloat numberA;
@property(nonatomic)CGFloat numberB;
-(CGFloat)calculate;
@end
