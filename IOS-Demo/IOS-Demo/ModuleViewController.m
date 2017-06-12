//
//  ModuleViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/17.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "ModuleViewController.h"

@interface ModuleViewController ()

@end

@implementation ModuleViewController

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

- (IBAction)navClick:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"navFirstLevelView"];
    
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
}

- (IBAction)taskList:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"taskListTableView"];
    
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
}

- (IBAction)taskStaticCell:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"taskStaticCellController"];
    
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
}

- (IBAction)gcdButtonClick:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"gcdSlowWorkerViewController"];
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
    
}

- (IBAction)gcdTestClick:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"GCDViewController"];
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
}

- (IBAction)delegateTestClick:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"DelegateTestViewController"];
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
}

- (IBAction)videoAction:(id)sender {
    //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"VideoViewController"];
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myView animated:YES];
    
}

@end
