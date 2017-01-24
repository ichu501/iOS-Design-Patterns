//
//  CommonTool.h
//  A simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CalculateType){
    calcuteTypeAdd,
    calcuteTypeMinus,
    calcuteTypdeMultipy,
    calcuteTypeDivide
};

@interface CommonTool : NSObject

@end
