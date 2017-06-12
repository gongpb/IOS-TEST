//
//  GCDSlowWorkerViewController.h
//  IOS-Demo
//
//  Created by adsdk on 2017/3/17.
//  Copyright © 2017年 adsdk. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface GCDSlowWorkerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *workText;
@property (strong, nonatomic) IBOutlet UIButton *workButton;

- (IBAction)startWorkButton:(id)sender;

@end
