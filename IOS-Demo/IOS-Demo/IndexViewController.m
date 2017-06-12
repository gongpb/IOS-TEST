//
//  IndexViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/16.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "IndexViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 刷新至初始状态
- (IBAction)refresh:(UIBarButtonItem *)sender
{
    self.navigationItem.title = @"首页";
    self.wantToLoginBtn.enabled = YES;
    self.refreshBtn.enabled = NO;
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
