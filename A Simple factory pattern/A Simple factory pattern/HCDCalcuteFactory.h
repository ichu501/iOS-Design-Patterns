//
//  HCDCalcuteFactory.h
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HCDCalculate.h"
#import "CommonTool.h"
@interface HCDCalcuteFactory : NSObject

+(id<HCDCalculate>)createCalcute:(CalculateType)calculatetype;
@end
