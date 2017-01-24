//
//  HCDCalculateMinus.m
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import "ICalculateMinus.h"

@implementation ICalculateMinus
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
-(CGFloat)calculate{
    return self.numberA - self.numberB;
}
@end
