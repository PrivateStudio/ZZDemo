//
//  ViewController.m
//  ZZDemo
//
//  Created by He, Zhaozhu X. -ND on 12/30/15.
//  Copyright © 2015 Personal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    testView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:testView];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
