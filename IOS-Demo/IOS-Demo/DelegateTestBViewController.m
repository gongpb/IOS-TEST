//
//  DelegateTestBViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/21.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "DelegateTestBViewController.h"

@interface DelegateTestBViewController ()

@end

@implementation DelegateTestBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)keyDownClick:(id)sender {
    [self.inputText resignFirstResponder];
}

- (IBAction)backAction:(id)sender {
    if([self.delegate respondsToSelector:@selector(sendValue:)]){
        [self.delegate sendValue:_inputText.text]; //执行协议方法
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
