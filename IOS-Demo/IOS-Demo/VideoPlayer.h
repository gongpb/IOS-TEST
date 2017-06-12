//
//  VideoPlayer.h
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/26.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@protocol VideoPlayerLoadingDelegate <NSObject>

@required
- (void)startAnimating;
- (void)stopAnimating;

@end

@interface VideoPlayer : NSObject

//init player
+(instancetype) sharedInstance;
/**
 传入url自动播放， superView 是表示在哪里播放，传入视频播放层的父控件
 */
-(void)playVideoUrl:(NSURL *)url showInSupperView:(UIView *) superView;
/**
 传入url自动播放，coverUrl默认的加载背景图 superView是表示在哪里播放，传入视频播放层的父控件
 */
-(void)playVideoUrl:(NSURL *)url coverImageurl:(NSString *)coverUrl showInSuperView:(UIView *)superView;

/**
 返回剩余时间
 */
@property (nonatomic, copy) void(^playerTimeProgressBlock)(long residueTime);
-(void) setPlayerTimeProgressBlock:(void (^)(long))playerTimeProgressBlock;

/**
 播放与重播
 */
-(void) playWithResume;

/**
 暂停
 */
- (void)pause;
/**
 停止
 */
- (void)stop;

#pragma mark - config 属性

/**
 * 视频加载视图, 默认为系统UIActivityIndicatorView
 */
@property (nonatomic, strong)UIView<VideoPlayerLoadingDelegate> *loadingView;

/**
 * 默认YES. 当app加载视频是否显示加载动画
 */
@property (nonatomic, assign) BOOL showActivityWhenLoading;
/**
 * 默认YES.  当app进入后台是否停止播放
 */
@property (nonatomic, assign) BOOL stopWhenAppDidEnterBackground;

/**
 * 默认NO.  当播放的时候是否打开声音
 */
@property(nonatomic, assign)  BOOL openSoundWhenPlaying;

@end
