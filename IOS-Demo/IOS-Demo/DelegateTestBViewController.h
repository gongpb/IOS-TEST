//
//  DelegateTestBViewController.h
//  IOS-Demo
//
//  Created by adsdk on 2017/3/21.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>

// 新建一个协议，协议的名字一般是由“类名+Delegate”

@protocol DelegateTestBViewControllerDelegate<NSObject> // 代理传值方法

- (void)sendValue:(NSString *)value;
 
@end

@interface DelegateTestBViewController : UIViewController

// 委托代理人，代理一般需使用弱引用(weak)
@property (weak, nonatomic) id<DelegateTestBViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *inputText;

- (IBAction)keyDownClick:(id)sender;

- (IBAction)backAction:(id)sender;

@end
