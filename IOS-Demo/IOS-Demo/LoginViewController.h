//
//  ViewController.h
//  IOS-Demo-2
//
//  Created by adsdk on 2017/3/12.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *userName;
@property (nonatomic, retain) IBOutlet UITextField *pwd;

- (IBAction)userLogin:(id)sender;

- (IBAction)backgroundTap:(id)sender;

// NavigationItem左侧的按钮 点击事件  返回前一个控制器
- (IBAction)backToHome:(UIBarButtonItem *)sender;

@end

