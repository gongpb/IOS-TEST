//
//  ProtocolDelegate.h
//  IOS-Demo
//
//  Created by adsdk on 2017/3/21.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtocolDelegate <NSObject>
@required
- (void)error;

// 可选实现的方法
@optional
- (void)other;
- (void)other2;
- (void)other3;
@end
