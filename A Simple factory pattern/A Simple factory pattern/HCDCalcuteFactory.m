//
//  HCDCalcuteFactory.m
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import "HCDCalcuteFactory.h"
#import "HCDCalculateAdd.h"
#import "HCDCalculateDivide.h"
#import "HCDCalculateMinus.h"
#import "HCDCalcuteMultiply.h"


@implementation HCDCalcuteFactory
+(id<HCDCalculate>)createCalcute:(CalculateType)calculatetype{
    switch (calculatetype) {
        case calcuteTypeAdd:
            return [[HCDCalculateAdd alloc]init];
            break;
        case calcuteTypeMinus:
            return [[HCDCalculateMinus alloc]init];
            break;
        case calcuteTypdeMultipy:
            return [[HCDCalcuteMultiply alloc]init];
        case calcuteTypeDivide:
            return [[HCDCalculateDivide alloc]init];
    }
}
@end
