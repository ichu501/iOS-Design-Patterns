//
//  HCDCalculateDivide.m
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import "ICalculateDivide.h"

@implementation ICalculateDivide
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
-(CGFloat)calculate{
    if (self.numberB == 0) {
        assert(self.numberB);
    }
    return self.numberA/self.numberB;
}
@end
