//
//  VideoPlayControllerViewController.m
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/25.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "VideoPlayControllerViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface VideoPlayControllerViewController ()

@property (nonatomic, strong) MPMoviePlayerController *player;

@end

@implementation VideoPlayControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
}

-(void)playerButtonClick:(UIButton *)playButton{
    playButton.selected = !playButton.selected;
    if(playButton.isSelected){
        [self.player prepareToPlay];
        if([self.player isPreparedToPlay]){
            [self.player play];
        }
    }else{
        [self.player stop];
    }
}

-(void) loadStateDidChange:(NSNotification *)sender{
    switch (self.player.loadState) {
        case MPMovieLoadStatePlayable:
            NSLog(@"加载完成,可以播放");
            break;
        case MPMovieLoadStatePlaythroughOK:{
             NSLog(@"缓冲完成，可以连续播放");
        }
            break;
        case MPMovieLoadStateStalled:{
            NSLog(@"缓冲中");
        }
            break;
        case MPMovieLoadStateUnknown:{
            NSLog(@"未知状态");
        }
            break;
        default:
            break;
    }
}

-(MPMoviePlayerController *) player{
    
    if(_player == nil){
        //create player
        NSURL *url = [NSURL URLWithString:self.videoPath];
        _player = [[MPMoviePlayerController alloc] initWithContentURL:url];
        
        //给播放器内部的view设置frame
        _player.view.frame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height *9 /16);
        
        //添加到播放器view中
        [self.view addSubview:_player.view];
        //设置当前视频播放状态
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadStateDidChange:) name:MPMoviePlayerLoadStateDidChangeNotification object:nil];
        
        // 4.设置控制面板的显示
        //_player.controlStyle = MPMovieControlStyleFullscreen;
    }
    
    return _player;
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

@end
