//
//  VideoBaseViewController.h
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/25.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoBaseViewController : UIViewController

@property (nonatomic, strong) NSString *videoPath;

- (void)playerButtonClick:(UIButton *)playButton;

@end
