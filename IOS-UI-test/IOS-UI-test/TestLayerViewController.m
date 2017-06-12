//
//  TestLayerViewController.m
//  IOS-UI-test
//
//  Created by gongpibao on 2017/4/28.
//  Copyright © 2017年 gongpibao. All rights reserved.
//

#import "TestLayerViewController.h"

@interface TestLayerViewController ()

@end

@implementation TestLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(10, 20, 300, 30);
    bt.backgroundColor = [UIColor greenColor];
    [bt setTitle:@"点我返回" forState:UIControlStateNormal];
    [bt setTitle:@"谢谢光临" forState:UIControlStateHighlighted];
    [bt addTarget:self action:@selector(btnClickMe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];

    UIView *redView = [[UIView alloc] init];
    redView.frame = CGRectMake(10, 60, 300, 100);
    redView.backgroundColor = [UIColor redColor];
    
    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.frame = CGRectMake(20, 80, 100, 120);
    yellowView.backgroundColor = [UIColor yellowColor];
    

    UIView *blueView = [[UIView alloc] init];
    blueView.frame = CGRectMake(50, 70, 80, 120);
    blueView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:redView];
    [self.view addSubview:yellowView];
    [self.view addSubview:blueView];

//    [self.view bringSubviewToFront:redView];
//    [self.view sendSubviewToBack:blueView];
    [self.view insertSubview:redView belowSubview:blueView];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void) btnClickMe{
    NSLog(@"testVIew测试");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
