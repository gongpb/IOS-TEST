//
//  DelegateTestViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/21.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "DelegateTestViewController.h"
#import "ProtocolDelegate.h"
#import "DelegateTestBViewController.h"

@interface DelegateTestViewController () <ProtocolDelegate, DelegateTestBViewControllerDelegate>

@end

@implementation DelegateTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DelegateTestBViewController *vc = segue.destinationViewController;
    [vc setDelegate:self];
}

// 这里实现B控制器的协议方法
- (void)sendValue:(NSString *)value
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"成功" message:value delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
}

- (void)error{
    
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
