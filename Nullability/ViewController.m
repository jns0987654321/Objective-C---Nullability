//
//  ViewController.m
//  Nullability
//
//  Created by Junior Samaroo on 2017-04-30.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)getName:(NSString * _Nullable)name {

}

-(int)sum:(nonnull NSNumber*)numA :(nonnull NSNumber*)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *num1;
    NSNumber *num2;
    
    int sum = [self sum:num1 :num2];
    
    NSLog(@"SUM: %d", sum); //prints 0, however is null
    
    [self getName:nil];
    
    // if passing null in objC will give warning, but swift will throw error at compile time
    // use optionals in swift to say it is nullable
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
