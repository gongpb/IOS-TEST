//
//  TaskListTableViewController.h
//  IOS-Demo-2
//
//  Created by adsdk on 2017/3/14.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavSecondLevelTvController.h"

@interface TaskListController : NavSecondLevelTvController

{
    UITableView *tableview;
    NSArray *array; //创建个数组来放我们的数据
    
}
@property (strong,nonatomic)UITableView *tableview;
@property (strong,nonatomic)NSArray *array;

@property (strong, nonatomic) NSArray *tasks;


@end
