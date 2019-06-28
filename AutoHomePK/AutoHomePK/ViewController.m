//
//  ViewController.m
//  AutoHomePK
//
//  Created by zyl on 2019/6/28.
//  Copyright © 2019 zyl. All rights reserved.
//

#import "ViewController.h"
#import "PKController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    [btn setTitle:@"gotoPK" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn addTarget:self action:@selector(gotoPK) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)gotoPK{
    PKController *vc = [[PKController alloc] init];
    UINavigationController *na = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:na animated:YES completion:nil];
}

@end
