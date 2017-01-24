//
//  ViewController.m
//  A Simple factory pattern
//
//  Created by Irshad PC on 06/09/15.
//  Copyright (c) 2015 Irshad PC. All rights reserved.
//

#import "ViewController.h"
#import "CommonTool.h"
#import "ICalculate.h"
#import "ICalcuteFactory.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberA;
@property (weak, nonatomic) IBOutlet UITextField *countTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberB;
@property (weak, nonatomic) IBOutlet UILabel *resultTextfield;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)calculate:(id)sender {
    id<ICalculate> cal;
    
    if ([self.countTextField.text isEqualToString:@"+"]) {
        cal =[ICalcuteFactory createCalcute:calcuteTypeAdd];
    }else if([self.countTextField.text isEqualToString:@"-"]){
        cal = [ICalcuteFactory createCalcute:calcuteTypeMinus];
    }else if ([self.countTextField.text isEqualToString:@"*"]) {
        cal =[ICalcuteFactory createCalcute:calcuteTypdeMultipy];
    }else if([self.countTextField.text isEqualToString:@"/"]){
        cal = [ICalcuteFactory createCalcute:calcuteTypeDivide];
    }
    cal.numberA = [self.numberA.text floatValue];
    cal.numberB = [self.numberB.text floatValue];
    CGFloat result =  [cal calculate];
    NSLog(@"Results : %f",result);
    self.resultTextfield.text = [@(result) stringValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
