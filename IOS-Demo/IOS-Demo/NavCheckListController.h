//
//  NavCheckListController.h
//  IOS-Demo
//
//  Created by adsdk on 2017/3/16.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "NavSecondLevelTvController.h"

@interface NavCheckListController : NavSecondLevelTvController

@property (strong, nonatomic) NSArray *list;
@property (strong, nonatomic) NSIndexPath *lastIndexPath;

@end
