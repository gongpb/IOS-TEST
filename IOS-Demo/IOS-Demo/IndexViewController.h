//
//  IndexViewController.h
//  IOS-Demo
//
//  Created by adsdk on 2017/3/16.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndexViewController : UIViewController

// NavigationItem左侧的按钮
@property (weak, nonatomic) IBOutlet UIBarButtonItem *refreshBtn;
// NavigationItem右侧的按钮
@property (weak, nonatomic) IBOutlet UIBarButtonItem *wantToLoginBtn;

// NavigationItem左侧的按钮 点击事件 刷新至初始状态
- (IBAction)refresh:(UIBarButtonItem *)sender;
   
@end
