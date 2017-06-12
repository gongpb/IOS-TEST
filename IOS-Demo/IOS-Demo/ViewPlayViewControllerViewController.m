//
//  ViewPlayViewControllerViewController.m
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/26.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "ViewPlayViewControllerViewController.h"
#import <MediaPlayer/MediaPlayer.h>
/**
 MPMoviePlayerViewController 播放器测试
 **/
@interface ViewPlayViewControllerViewController ()

@property (nonatomic, strong) MPMoviePlayerViewController *player;

@end

@implementation ViewPlayViewControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}


- (void) playerButtonClick:(UIButton *)playButton{
    [self  presentMoviePlayerViewControllerAnimated:self.player];
}

-(MPMoviePlayerViewController *) player{
    
    if(_player == nil){
        NSURL *url = [NSURL URLWithString:self.videoPath];
        _player = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
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
