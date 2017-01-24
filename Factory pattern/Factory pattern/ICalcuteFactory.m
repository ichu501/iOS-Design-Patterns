//
//  HCDCalcuteFactory.m
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import "ICalcuteFactory.h"
#import "ICalculateAdd.h"
#import "ICalculateDivide.h"
#import "ICalculateMinus.h"
#import "ICalcuteMultiply.h"


@implementation ICalcuteFactory
+(id<ICalculate>)createCalcute:(CalculateType)calculatetype{
    switch (calculatetype) {
        case calcuteTypeAdd:
            return [[ICalculateAdd alloc]init];
            break;
        case calcuteTypeMinus:
            return [[ICalculateMinus alloc]init];
            break;
        case calcuteTypdeMultipy:
            return [[ICalcuteMultiply alloc]init];
        case calcuteTypeDivide:
            return [[ICalculateDivide alloc]init];
    }
}
@end
